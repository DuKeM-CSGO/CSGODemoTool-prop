INCLUDE_GUARD(GLOBAL)

# Check Headers
FUNCTION(check_headers input)
	LIST(APPEND checked_headers "")
	INCLUDE(CheckIncludeFileCXX)
	
	FOREACH(f IN LISTS input)
		STRING(TOUPPER ${f} input_var)
		STRING(PREPEND input_var "HAVE_")
		STRING(REGEX REPLACE "[^A-Z0-9]+" "_" output_var ${input_var})
		
		CHECK_INCLUDE_FILE_CXX("${f}" ${output_var})
		LIST(APPEND checked_headers ${output_var})
	ENDFOREACH()
	RETURN(PROPAGATE checked_headers)
ENDFUNCTION()

# Check Compiler Flags
FUNCTION(check_compiler_flags input)
	LIST(APPEND checked_compiler_flags "")
	INCLUDE(CheckCXXCompilerFlag)
	
	IF(${MSVC})
		FOREACH(f IN LISTS input)
			STRING(REGEX REPLACE "^[^a-zA-Z0-9]+" "" input_var "${f}")
			STRING(TOUPPER ${input_var} input_var)
			STRING(REGEX REPLACE "[^A-Z0-9]+" "_" output_var ${input_var})
			STRING(PREPEND output_var "HAVE_MSVC_")
			
			CHECK_CXX_COMPILER_FLAG("${f}" ${output_var})
			LIST(APPEND checked_compiler_flags ${output_var})
		ENDFOREACH()
	ELSE()
		FOREACH(f IN LISTS input)
			STRING(REPLACE "-std=c++2" "STD_CPP_2" input_var "${f}")
			STRING(REGEX REPLACE "^[^a-zA-Z0-9]+" "" input_var "${input_var}")
			STRING(TOUPPER ${input_var} input_var)
			STRING(REGEX REPLACE "[^A-Z0-9]+" "_" output_var ${input_var})
			STRING(PREPEND output_var "HAVE_CLANG_")
			
			CHECK_CXX_COMPILER_FLAG("${f}" ${output_var})
			LIST(APPEND checked_compiler_flags ${output_var})
		ENDFOREACH()
	ENDIF()
	RETURN(PROPAGATE checked_compiler_flags)
ENDFUNCTION()

FUNCTION(check_source_compiles input)
	LIST(LENGTH input input_length)
	MATH(EXPR remainder "${input_length} % 2")
	IF(NOT input_length OR remainder)
		MESSAGE(FATAL_ERROR "Invalid input[${input_length}]: ${input}")
	ENDIF()
	
	IF(${MSVC})
		SET(CMAKE_REQUIRED_FLAGS "/std:c++latest")
	ELSEIF(${HAVE_CLANG_STD_CPP_2C})
		SET(CMAKE_REQUIRED_FLAGS "-std=c++2c")
	ELSEIF(${HAVE_CLANG_STD_CPP_23})
		SET(CMAKE_REQUIRED_FLAGS "-std=c++23")
	ELSE()
		SET(CMAKE_REQUIRED_FLAGS "-std=c++20")
	ENDIF()
	
	LIST(APPEND checked_source_compiles "")
	INCLUDE(CheckCXXSourceCompiles)
	
	MATH(EXPR input_length "${input_length} - 2")
	FOREACH(i RANGE 0 ${input_length} 2)
		SET(index_of_name ${i})
		MATH(EXPR index_of_code "${i} + 1")
        LIST(GET input ${index_of_name} output_var)
        LIST(GET input ${index_of_code} code)
		
		# Remove [[
		STRING(REGEX REPLACE "^\\[[=]*\\[[ \t\r\n]*" "" code "${code}")
		
		# Remove ]]
		STRING(REGEX REPLACE "[ \t\r\n]*\\][=]*\\]$" "" code "${code}")
		
		check_cxx_source_compiles("${code}" ${output_var})
		LIST(APPEND checked_source_compiles ${output_var})
	ENDFOREACH()
	
	UNSET(CMAKE_REQUIRED_FLAGS)
	RETURN(PROPAGATE checked_source_compiles)
ENDFUNCTION()

FUNCTION(process_detect)
	SET(oneValueArgs
		COMPILER_FLAGS
		INCLUDE_FILES
		SOURCE_COMPILES
		OTHERS
	)
	
	CMAKE_PARSE_ARGUMENTS(PARSE_ARGV 0 internal "" "${oneValueArgs}" "")
	
	# Format results
	SET(JSON_STR [[{
		"cmake_variables": {},
		"headers": {},
		"compiler_flags": {},
		"cpp_features": {}
	}]])
	
	MACRO(write_vars)
		CMAKE_PARSE_ARGUMENTS(json "" "KEY" "VALUE" ${ARGN})
		
		FOREACH(i IN LISTS json_VALUE)
			STRING(JSON JSON_STR SET "${JSON_STR}" "${json_KEY}" "${i}" \"${${i}}\")
		ENDFOREACH()
	ENDMACRO()
	
	check_compiler_flags("${internal_COMPILER_FLAGS}")
	check_headers("${internal_INCLUDE_FILES}")
	
	write_vars(KEY "cmake_variables" VALUE "${internal_OTHERS}")
	write_vars(KEY "compiler_flags" VALUE "${checked_compiler_flags}")
	write_vars(KEY "headers" VALUE "${checked_headers}")
	
	MACRO(write_cpp_features)
		CMAKE_PARSE_ARGUMENTS(json "" "KEY" "VALUE" ${ARGN})
		
		FOREACH(i IN LISTS json_VALUE)
			STRING(LENGTH "HAVE_" prefix_len)
			IF(i MATCHES "^HAVE_")
				# Take a copy or STRING(SUBSTRING) will break it
				SET(var_name ${i})
				
				# Protect i if existed
				STRING(REGEX MATCH "_[0-9]+L$" postfix "${var_name}")
				SET(postfix_index -1)
				IF("${postfix}" STRGREATER "")
					STRING(FIND "${var_name}" "${postfix}" postfix_index)
					STRING(SUBSTRING "${var_name}" 0 ${postfix_index} var_name)
				ENDIF()
				
				# prefix "HAVE_" -> "__"
				STRING(SUBSTRING "${var_name}" ${prefix_len} -1 key)
				STRING(TOLOWER "${key}" key)
				STRING(PREPEND key "__")
				STRING(APPEND key "${postfix}")
			ENDIF()
			
			STRING(JSON JSON_STR SET "${JSON_STR}" ${json_KEY} ${key} \"${${i}}\")
		ENDFOREACH()
	ENDMACRO()
	
	check_source_compiles("${internal_SOURCE_COMPILES}")
	write_cpp_features(KEY "cpp_features" VALUE "${checked_source_compiles}")
	
	FILE(WRITE "${CMAKE_SOURCE_DIR}/build/cmake_detect.json" "${JSON_STR}")
ENDFUNCTION()
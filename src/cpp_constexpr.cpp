#include <memory>

template <class>
class function;

template <class R, class... TArgs>
class function<R(TArgs...)> {
  struct interface {
    constexpr virtual auto operator()(TArgs...) -> R = 0;
    constexpr virtual ~interface() = default;
  };

  template <class Fn>
  struct implementation final : interface {
    constexpr explicit(true) implementation(Fn fn) : fn{fn} {}
    constexpr auto operator()(TArgs... args) -> R { return fn(args...); }

   private:
    Fn fn{};
  };

 public:
  template <class Fn>
  constexpr function(Fn fn) : fn{std::make_unique<implementation<Fn>>(fn)} {}

  constexpr auto operator()(TArgs... args) const -> R {
    return (*fn)(args...);
  }

 private:
  std::unique_ptr<interface> fn{};
};

template <class> struct function_traits {};

template <class R, class B, class... TArgs>
struct function_traits<R (B::*)(TArgs...) const> {
  using type = R(TArgs...);
};

template <class F>
function(F) -> function<typename function_traits<decltype(&F::operator())>::type>;

consteval auto test_empty() {
  function f = [] { return 42; };
  return f();
}

consteval auto test_arg() {
  function f = [](int i) { return i; };
  return f(42);
}

consteval function<int()> test_capture() {
  int i = 42;
  return [=] { return i; }; // Must be '='!
}

constexpr auto test_capture_result = test_capture()();

struct TestStruct_t{
	int i = 0;
	constexpr function<int()> test_capture_this() {
		return [this] { return this->i = 42; }; // No constexpr
	}
};

constexpr int test_use_this(){
    auto test_struct = TestStruct_t();
    test_struct.test_capture_this()();
    return test_struct.i;
}

static_assert(42 == test_empty());
static_assert(42 == test_arg());
static_assert(42 == test_capture()());
static_assert(42 == test_use_this());

void test_constexpr(){
    return test_capture_result;
}
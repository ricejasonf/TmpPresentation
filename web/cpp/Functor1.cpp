#include<iostream>

//obviously incomplete

template<int v>
struct Functor 
{
  static constexpr int value = v;

  template<typename Fn>
  static constexpr auto fmap(Fn fn) -> decltype(fn(v))
  {
    //return Functor<decltype(fn(v))>{};
    return fn(v);
  }
};

struct Even
{
  template<typename T>
  constexpr bool operator()(T value)
  {
    return (value % 2 == 0);
  }
}
constexpr even = Even{};

int main()
{
  static_assert(
      Functor<4 + 3>::fmap(even) == (Functor<4>::fmap(even) && Functor<3>::fmap(even))
  , "");
  std::cout << std::boolalpha;
  std::cout << Functor<4 + 3>::fmap(even);
  std::cout << std::endl;
  std::cout << Functor<4>::fmap(even);
  std::cout << std::endl;
  std::cout << Functor<3>::fmap(even);
  std::cout << std::endl;
  std::cout << (Functor<4>::fmap(even) && Functor<3>::fmap(even));
  std::cout << std::endl;
}

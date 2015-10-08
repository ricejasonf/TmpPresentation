#include<iostream>

template<int...>
struct Sum
{
  static constexpr int value = 0;
};

template<int a, int... b>
struct Sum<a, b...>
{
  static constexpr int value = a + Sum<b...>::value;
};

int main() 
{
  std::cout << Sum<>::value << std::endl;
  std::cout << Sum<0>::value << std::endl;
  std::cout << Sum<1>::value << std::endl;
  std::cout << Sum<1, 1>::value << std::endl;
  std::cout << Sum<1, 1, 2>::value << std::endl;
  std::cout << Sum<1, 1, 2, 3>::value << std::endl;
  std::cout << Sum<1, 1, 2, 3, 5>::value << std::endl;
}

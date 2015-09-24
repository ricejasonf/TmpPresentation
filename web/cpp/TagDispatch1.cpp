#include<iostream>

struct Tag1 {};
struct Tag2 {};
struct Tag3 {};

template<typename Tag>
struct TagName;

template<>
struct TagName<Tag1>
{
  static constexpr const char* value = "tag1";
};

template<>
struct TagName<Tag2>
{
  static constexpr const char* value = "tag2";
};

int main() 
{
  std::cout << TagName<Tag1>::value << std::endl;
  std::cout << TagName<Tag2>::value << std::endl;
  //std::cout << TagName<Tag3>::value << std::endl;
}

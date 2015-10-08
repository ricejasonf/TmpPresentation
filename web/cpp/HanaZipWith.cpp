#include <boost/hana.hpp>

namespace hana = boost::hana;

static_assert(
    hana::maybe('x', hana::_ + 1, hana::just(1)) == 2
, "");

int main() { }

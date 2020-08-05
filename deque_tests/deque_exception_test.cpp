#include "../catch2/catch.hpp"
#include "../dequeexception.h"

TEST_CASE("Test Exception for Deque", "[exception]")
{

    SECTION("Test Value for Automate")
    {
        DequeException err;
        REQUIRE(err.GetCodeError() == 0);
        REQUIRE(err.GetMessageError() == "");
    }

    SECTION("Test Handle Value")
    {
        unsigned int code = 5;
        std::string msg = "error";
        DequeException err(code, msg);
        REQUIRE(err.GetCodeError() == code);
        REQUIRE(err.GetMessageError() == msg);
    }

}

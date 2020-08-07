#include "../catch2/catch.hpp"
#include "../dequeexception.h"
#include <sstream>

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

    SECTION("Test Stream Value")
    {
        unsigned int code = 5;
        std::string msg = "error";
        DequeException err(code, msg);
        std::stringstream ss;
        ss << err;
        std::string result("DequeException : error code = 5,  error");
        REQUIRE( ss.str() == result);
    }

}

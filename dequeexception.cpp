#include "dequeexception.h"

DequeException::DequeException(unsigned int code, std::string msg):
_code_error(code),
_msg_error(msg)
{

}

DequeException::~DequeException()
{

}

unsigned int DequeException::GetCodeError() const
{
    return this->_code_error;
}

std::string DequeException::GetMessageError() const
{
    return this->_msg_error;
}

std::ostream &operator<<(std::ostream &os, const DequeException &dequeException)
{
    os << "DequeException : error code = " << dequeException.GetCodeError()
       << ",  " << dequeException.GetMessageError();
    return os;
}

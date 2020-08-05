#include <iostream>
#include <random>
#include "../catch2/catch.hpp"
#include "../deque.h"

TEST_CASE("Test for Iterator Deque", "[iterator]")
{
    Deque deq;

    SECTION("Work with Iterator")
    {
        SECTION("Create Begin Iterator")
        {
            int value = 10;
            deq.PushFront(value);
            Deque::DequeIterator it = deq.begin();
            REQUIRE(*it == value);
        }

        SECTION("Exception for Create Iterator Empty Deque")
        {
            REQUIRE_THROWS_AS(deq.begin(), DequeException);
            REQUIRE_THROWS_AS(deq.end(), DequeException);
        }

        SECTION("Equal and NotEqual Iterators")
        {
            int value = 10;
            deq.PushFront(value);
            Deque::DequeIterator it = deq.begin();
            REQUIRE(it == deq.begin());

            Deque::DequeIterator end = deq.end();
            REQUIRE(end == deq.end());

            REQUIRE(it != end);
        }
    }


    SECTION("OPerations with Iterator")
    {
        SECTION("Increment Iterator")
        {
            for(unsigned int i = 0; i < 5; i++)
                deq.PushFront(i);

            Deque::DequeIterator it = deq.begin();
            int value = 4;
            for(; it != deq.end(); ++it)
            {
                REQUIRE(value == (*it));
                value--;
            }

            it = deq.begin();
            value = 4;
            for(; it != deq.end(); it++)
            {
                REQUIRE(value == (*it));
                value--;
            }
        }

        SECTION("Decrement Iterator")
        {
            for(unsigned int i = 0; i < 5; i++)
                deq.PushFront(i);

            Deque::DequeIterator it = deq.end();
            int value = 0;
            --it;
            for(; it != deq.begin(); --it)
            {
                REQUIRE(value == (*it));
                value++;
            }

            it = deq.end();
            it--;
            value = 0;
            for(; it != deq.begin(); it--)
            {
                REQUIRE(value == (*it));
                value++;
            }
        }

        SECTION("Exception with Operations")
        {
            for(unsigned int i = 0; i < 5; i++)
                deq.PushFront(i);

            Deque::DequeIterator bit = deq.begin();
            REQUIRE_THROWS_AS(bit--, DequeException);
            REQUIRE_THROWS_AS(bit--, DequeException);

            Deque::DequeIterator it = deq.end();
            REQUIRE_THROWS_AS(*it, DequeException);
            REQUIRE_THROWS_AS(it++, DequeException);
            REQUIRE_THROWS_AS(++it, DequeException);

        }
    }


    SECTION("Find Items in Deque")
    {
        SECTION("Left Find Items")
        {
            for(unsigned int i = 0; i < 5; i++)
                deq.PushFront(i);

            for(int i = 0; i < 5; i++)
            {
                Deque::DequeIterator it = deq.LeftFindItem(i);
                REQUIRE(*it == i);
            }

            Deque::DequeIterator it = deq.LeftFindItem(11);
            REQUIRE(it == deq.end());
        }

        SECTION("Right Find Items")
        {
            for(unsigned int i = 0; i < 5; i++)
                deq.PushBack(i);

            for(int i = 0; i < 5; i++)
            {
                Deque::DequeIterator it = deq.RightFindItem(i);
                REQUIRE(*it == i);
            }

            Deque::DequeIterator it = deq.RightFindItem(11);
            REQUIRE(it == deq.begin());
        }
    }


    SECTION("Remove Items from Deque")
    {
        SECTION("Remove Front Items")
        {
            for(unsigned int i = 0; i < 5; i++)
                deq.PushBack(i);

            deq.LeftRemoveItem(deq.begin());
            REQUIRE(deq.Length() == 4);
            int value = 1;
            Deque::DequeIterator it = deq.begin();
            for(; it != deq.end(); ++it)
            {
                REQUIRE(value == (*it));
                value++;
            }
        }

        SECTION("Remove Last Item")
        {
            for(unsigned int i = 0; i < 5; i++)
                deq.PushBack(i);

            deq.LeftRemoveItem(deq.end()--);
            REQUIRE(deq.Length() == 4);
            int value = 0;
            Deque::DequeIterator it = deq.begin();
            for(; it != deq.end(); ++it)
            {
                REQUIRE(value == (*it));
                value++;
            }
        }

        SECTION("Remove Inner Item")
        {
            for(unsigned int i = 0; i < 5; i++)
                deq.PushBack(i);

            deq.LeftRemoveItem(deq.LeftFindItem(1));
            deq.LeftRemoveItem(deq.LeftFindItem(3));
            int value = 0;
            Deque::DequeIterator it = deq.begin();
            for(; it != deq.end(); ++it)
            {
                REQUIRE(value == (*it));
                value += 2;
            }
        }

        SECTION("Remove Uncorrect Iterator")
        {
            for(unsigned int i = 0; i < 5; i++)
                deq.PushBack(i);
            deq.LeftRemoveItem(deq.end());
            REQUIRE(deq.Length() == 5);
            int value = 0;
            Deque::DequeIterator it = deq.begin();
            for(; it != deq.end(); ++it)
            {
                REQUIRE(value == (*it));
                value++;
            }
        }

        SECTION("Remove Single Value from Set")
        {
            for(unsigned int i = 0; i < 5; i++)
                deq.PushBack(10);
            for(unsigned int i = 0; i < 5; i++)
                deq.PushBack(20);

            deq.LeftRemoveItem(deq.LeftFindItem(10));
            deq.LeftRemoveItem(deq.LeftFindItem(10));
            deq.LeftRemoveItem(deq.LeftFindItem(20));
            deq.LeftRemoveItem(deq.LeftFindItem(20));

            REQUIRE(deq.Length() == 6);
            Deque::DequeIterator it = deq.begin();
            for(unsigned int i = 0; i < 3; i++)
            {
                REQUIRE(10 == (*it));
                it++;
            }
            for(unsigned int i = 0; i < 3; i++)
            {
                REQUIRE(20 == (*it));
                it++;
            }

        }
    }

    SECTION("Insert Item In Deque")
    {
        SECTION("Insert into Begin")
        {
            for(unsigned int i = 1; i < 3; i++)
                deq.PushBack(i);

            deq.InsertItem(deq.begin(), 0);
            REQUIRE(deq.Length() == 3);
            int value = 0;
            Deque::DequeIterator it = deq.begin();
            for(; it != deq.end(); ++it)
            {
                REQUIRE(value == (*it));
                value++;
            }
            REQUIRE(deq.PopFront() == 0);
            REQUIRE(deq.Length() == 2);
        }

        SECTION("Insert into End")
        {
            for(unsigned int i = 0; i < 3; i++)
                deq.PushBack(i);
            REQUIRE(deq.Length() == 3);
            deq.InsertItem(deq.end()--, 3);
            REQUIRE(deq.Length() == 4);
            int value = 0;
            Deque::DequeIterator it = deq.begin();
            for(; it != deq.end(); ++it)
            {
                REQUIRE(value == (*it));
                value++;
            }

            REQUIRE(deq.PopBack() == 3);
            REQUIRE(deq.Length() == 3);
        }

        SECTION("Insert Inner Items")
        {
            for(unsigned int i = 0; i < 2; i++)
                deq.PushBack(i);


            for(unsigned int i = 3; i < 5; i++)
                deq.PushBack(i);
            REQUIRE(deq.Length() == 4);

            deq.InsertItem(deq.LeftFindItem(3), 2);
            int value = 0;
            REQUIRE(deq.Length() == 5);
            Deque::DequeIterator it = deq.begin();
            for(; it != deq.end(); ++it)
            {
                REQUIRE(value == (*it));
                value++;
            }
        }
    }
}

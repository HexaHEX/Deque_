#include <iostream>
#include <random>
#include "../catch2/catch.hpp"
#include "../deque.h"

TEST_CASE("Test Deque", "[Deque]")
{
    Deque deq;
    SECTION("Create Empty Deque")
    {
        REQUIRE(deq.Empty() == true);
        REQUIRE(deq.Length() == 0);
    }

    SECTION("Add Item in Deque")
    {
        unsigned int size = 0;
        for(unsigned int i = 0; i < 5; i++)
        {
            int front_value = rand() % 100 - 50;
            deq.PushFront(front_value);
            size++;
            REQUIRE(deq.Length() == size);

            int back_value = rand() % 100 - 50;
            deq.PushBack(back_value);
            size++;
            REQUIRE(deq.Length() == size);
        }
    }

    SECTION("Clear Deque")
    {
        deq.Clear();
        REQUIRE(deq.Empty() == true);
        REQUIRE(deq.Length() == 0);
    }

    SECTION("Delete Item Front Deque")
    {
        unsigned int size = 0;
        for(unsigned int i = 0; i < 5; i++)
        {
            int front_value = i;
            deq.PushFront(front_value);
            size++;
            REQUIRE(deq.Length() == size);
        }

        for(int i = 4; i >= 0; i--)
        {
            REQUIRE(deq.PopFront() == i);
            size--;
            REQUIRE(deq.Length() == size);
        }

        REQUIRE(deq.Empty() == true);
        REQUIRE(deq.Length() == 0);
    }

    SECTION("Delete Item Back Deque")
    {
        unsigned int size = 0;
        for(unsigned int i = 0; i < 5; i++)
        {
            int back_value = i;
            deq.PushBack(back_value);
            size++;
            REQUIRE(deq.Length() == size);
        }

        for(int i = 4; i >= 0; i--)
        {

            REQUIRE(deq.PopBack() == i);
            size--;
            REQUIRE(deq.Length() == size);
        }

        REQUIRE(deq.Empty() == true);
        REQUIRE(deq.Length() == 0);
    }

    SECTION("Add_Delete Item from Deque")
    {
        for(unsigned int i = 0; i < 5; i++)
        {
            int front_value = rand() % 100 - 50;
            deq.PushFront(front_value);
            REQUIRE(deq.Length() == 1);
            REQUIRE(deq.PopBack() == front_value);
            REQUIRE(deq.Empty() == true);
            REQUIRE(deq.Length() == 0);

            int back_value = rand() % 100 - 50;
            deq.PushBack(back_value);
            REQUIRE(deq.Length() == 1);
            REQUIRE(deq.PopFront() == back_value);
            REQUIRE(deq.Empty() == true);
            REQUIRE(deq.Length() == 0);
        }
    }

    SECTION("Delete From Empty Deque")
    {
        REQUIRE_THROWS_AS( deq.PopBack(), DequeException);
        REQUIRE_THROWS_AS( deq.PopFront(), DequeException);
    }

#ifdef BAD_ALLOC_TEST
    SECTION("Bad Alloc Deque ctor")
    {
        Deque::setBadAllocTestMode( true ); 
        REQUIRE_THROWS_AS( Deque(), DequeException );
        Deque::setBadAllocTestMode( false ); 
    }

    SECTION("Bad Alloc Deque PushBack")
    {
        Deque deque;
        Deque::setBadAllocTestMode( true ); 
        REQUIRE_THROWS_AS( deque.PushBack(1), DequeException );
        Deque::setBadAllocTestMode( false ); 
    }

    SECTION("Bad Alloc Deque Second PushBack")
    {
        Deque deque;
        deque.PushBack(1);
        Deque::setBadAllocTestMode( true ); 
        REQUIRE_THROWS_AS( deque.PushBack(2), DequeException );
        Deque::setBadAllocTestMode( false ); 
    }

    SECTION("Bad Alloc Deque PushFront")
    {
        Deque deque;
        Deque::setBadAllocTestMode( true ); 
        REQUIRE_THROWS_AS( deque.PushFront(2), DequeException );
        Deque::setBadAllocTestMode( false ); 
    }

    SECTION("Bad Alloc Deque Second PushFront")
    {
        Deque deque;
        deque.PushFront(1);
        Deque::setBadAllocTestMode( true ); 
        REQUIRE_THROWS_AS( deque.PushFront(2), DequeException );
        Deque::setBadAllocTestMode( false ); 
    }

    SECTION("Bad Alloc Deque InsertItem")
    {
        Deque deque;
        deque.PushFront(1);
        Deque::setBadAllocTestMode( true ); 
        REQUIRE_THROWS_AS( deque.InsertItem( ++deque.begin(), 2), std::exception );
        Deque::setBadAllocTestMode( false ); 
    }
#endif

}


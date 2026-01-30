program overflow_test
    implicit none

    ! 1. Declare integers of different kinds [cite: 20]
    integer(kind=4) :: n4, fact4, prev4
    integer(kind=8) :: n8, fact8, prev8

    print *, "--- Task 1: Integer Overflow ---"
    
    fact4 = 1
    ! 2. Compute factorial n! in a loop [cite: 21]
    do n4 = 1, 100
        prev4 = fact4
        fact4 = fact4 * n4
        
        ! 3. Stop when overflow occurs (value becomes negative or smaller) [cite: 22]
        if (fact4 < prev4 .or. fact4 <= 0) then
            ! 4. Print last correct value and where overflow happened [cite: 23]
            print *, "Overflow detected at n =", n4
            print *, "Last correct value:", prev4
            exit
        end if
    end do
end program overflow_test

program homework2
    implicit none

    ! Variables for Task 1
    integer(kind=4) :: n4, fact4, prev4
    integer(kind=8) :: n8, fact8, prev8
    
    ! Variables for Task 2
    real(kind=8) :: big, small, total_sum

    ! --- TASK 1: INTEGER OVERFLOW (32-bit) ---
    print *, "--- Task 1: 32-bit Integer Overflow ---"
    fact4 = 1
    do n4 = 1, 100
        prev4 = fact4
        fact4 = fact4 * n4
        if (fact4 < prev4 .or. fact4 <= 0) then
            print *, "32-bit Overflow at n =", n4
            print *, "Last correct value:", prev4
            exit
        end if
    end do

    print *, ""
    ! --- TASK 1: INTEGER OVERFLOW (64-bit) ---
    print *, "--- Task 1: 64-bit Integer Overflow ---"
    fact8 = 1
    do n8 = 1, 100
        prev8 = fact8
        fact8 = fact8 * n8
        if (fact8 < prev8 .or. fact8 <= 0) then
            print *, "64-bit Overflow at n =", n8
            print *, "Last correct value:", prev8
            exit
        end if
    end do

    print *, ""
    ! --- TASK 2: LOSS OF SIGNIFICANCE ---
    print *, "--- Task 2: Loss of Significance ---"
    big = 1.0d0
    small = 1.0d0
    do
        total_sum = big + small
        if (total_sum <= big) then
            print *, "Precision limit reached at small =", small
            exit
        end if
        small = small / 2.0d0
    end do
end program homework2

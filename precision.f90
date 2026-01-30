program precision_test
    implicit none

    ! Variables for Task 2
    real(kind=8) :: big, small, total_sum

    print *, "--- Task 2: Loss of Significance (Precision) ---"
    
    ! 1. Start with big = 1.0 and small = 1.0 [cite: 31]
    big = 1.0d0
    small = 1.0d0

    ! 2. Loop to divide small by 2 in each iteration [cite: 32, 36]
    do
        total_sum = big + small ! [cite: 33]
        
        ! 3. Stop when adding small no longer increases big [cite: 37]
        ! This corresponds to the machine epsilon [cite: 39]
        if (total_sum <= big) then
            print *, "Precision limit reached!"
            print *, "Machine epsilon is approximately:", small
            exit
        end if

        print *, "Small:", small, " Sum:", total_sum
        small = small / 2.0d0 ! [cite: 36]
    end do

end program precision_test

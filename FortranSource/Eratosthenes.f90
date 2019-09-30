! subroutine - Sieve of Eratosthenes
!
    
subroutine EratosAlgorithm
implicit none
    !DEC$ ATTRIBUTES DLLEXPORT:: EratosAlgorithm
    !DEC$ ATTRIBUTES ALIAS: 'EratosAlgorithm' :: EratosAlgorithm
    integer :: n           ! n is the last number in the array
    logical, dimension(:), allocatable :: arr    ! arr is the array holding a sequence of numbers from 2 to n
    print *, "What is the last number of the sequence?";
    read *, n;
    arr = EratosSetup(n);
    
    contains
    
    function EratosSetup(n) result(arr)
        integer, intent(in) :: n;
        logical, dimension(2:n) :: arr    ! arr is the array holding a sequence of numbers from 2 to n
        integer :: i
    
        do i = 2,n
            arr(i) = .TRUE.;
        end do
    end function EratosSetup
    
end subroutine EratosAlgorithm
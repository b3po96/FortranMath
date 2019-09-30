!  Strassen.f90 
!
!  FUNCTIONS/SUBROUTINES exported from Strassen.dll:
!  Strassen - subroutine 
! 
module strassenlib
	! Elements
	integer :: a, b, c, d, e, f, g, h
	! 1x1 matrices
	integer :: s1, s2, s3, s4, s5, s6, s7, s8, s9, s10
	! 1x1 matrix products
	integer :: p1, p2, p3, p4, p5, p6, p7
	! 2x2 matrix elements with the results of the algorithm
	integer :: c11, c12, c21, c22
    end module
    
subroutine StrassenAlgorithm
use strassenlib
    ! Expose subroutine Strassen to users of this DLL
    !DEC$ ATTRIBUTES DLLEXPORT::StrassenAlgorithm
    !DEC$ ATTRIBUTES ALIAS: 'StrassenAlgorithm' :: StrassenAlgorithm

    ! Inputs all elements for each 2x2 array
    print *, "Enter A_11:"
    read *, a
    print *, "Enter A_12"
    read *, b
    print *, "Enter A_21:"
    read *, c
    print *, "Enter A_22"
    read *, d
	
    print *, "Enter B_11:"
    read *, e
    print *, "Enter B_12"
    read *, f
    print *, "Enter B_21:"
    read *, g
    print *, "Enter B_22"
    read *, h
	
    ! Calculates 10 1x1 matrices that coorespond to the addition/subtraction of two elements in the 2x2 arrays
    s1 = (f - h)
    s2 = (a + b)
    s3 = (c + d)
    s4 = (g - e)
    s5 = (a + d)
    s6 = (e + h)
    s7 = (b - d)
    s8 = (g + h)
    s9 = (a - c)
    s10 = (e + f)
	
    ! Calculates 7 1x1 matrices that coorespond to the multiplication of an element and one of the 1x1 matrices s1...s7
    p1 = (a*s1)
    p2 = (h*s2)
    p3 = (e*s3)
    p4 = (d*s4)
    p5 = (s5*s6)
    p6 = (s7*s8)
    p7 = (s9*s10)
	
    ! Calculates 4 elements as the result of the algorithm
    c11 = p5 + p4 - p2 + p6
    c12 = (p1 + p2)
    c21 = (p3 + p4)
    c22 = p1 + p5 - p3 - p7
	
    print *, c11, c12, c21,c22
	
end subroutine StrassenAlgorithm

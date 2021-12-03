program matrix_multiplication
    implicit none
    
    integer m, n, o, p, i, j, k

    real a(25, 25), b(25, 25), c(25, 25)

    write(*,*) "Enter the number of rows and columns of matrix A"
    read(*,*) m, n
    write(*,*) "Enter the number of rows and columns of matrix B"
    read(*,*) o, p

    if (n .ne. o) then
        write(*,*) "The number of rows of matrix A must be equal to the number of rows of matrix B"
        stop
    endif

    write(*,*) "Enter the elements of matrix A"
    do i=1,m
        read(*,*) (a(i, j), j = 1, n)
    enddo

    write(*,*) "Matrix A is "
    do i = 1, m
        write(*,*) (a(i, j), j = 1, n)
    enddo

    write(*,*) "Enter the elements of matrix B"
    do i = 1, o
        read(*,*) (b(i, j), j = 1, p)
    enddo


    write(*,*) "Matrix B is "
    do i = 1, o
        write(*,*) (b(i, j), j=1,p)
    enddo

    c(i, j) = 0.0
    do k=1, n
        do j=1, p
            do i=1, m
                c(i, j) = c(i, j) + a(i, k) * b(k, j)
            enddo
        enddo
    enddo
    
    write(*,*)
    write(*,*) "The product of the two matrices is"
    
    do i=1, m
        print*, (c(i,j), j=1,p)
    end do

end program matrix_multiplication
program adding_matrix
    implicit none

    integer m, n, i, j

    real a(25,25), b(25,25), c(25,25)


    write(*,*) 'Enter the number of rows and columns of the matrix'
    read*, m, n 
    write(*,*) 'Enter the elements of the A matrix'
    read*, ((a(i,j),j=1,n), i=1,m)
    write(*,*) 'Enter the elements of the B matrix'
    read*, ((b(i,j), j=1,n), i=1,m)

    do i = 1, m
        do j = 1, n
            c(i,j) = a(i,j) + b(i,j)
        end do
    end do


    write(*,*) 'The elements of the C matrix are'

    do i=1, m
        print*, (c(i,j), j=1,n)
    end do

    end program adding_matrix




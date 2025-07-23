
subroutine gauss(array,nx,ny,iterations)
    implicit none

    real*8, dimension(0:nx-1,0:ny-1), intent(inout) :: array
    integer, intent(in)                             :: nx,ny,iterations

    integer k,i,j

    do k=1,iterations
        do i=1,nx-2
            do j=1,ny-2
                array(i,j) = (array(i-1,j) + array(i+1,j) + array(i,j-1) + array(i,j+1)) / 4
            end do
        end do
    end do

    return
end subroutine gauss

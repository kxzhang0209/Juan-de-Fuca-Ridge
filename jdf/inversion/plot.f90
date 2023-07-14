! To gain proper txt to plot Vs and 1/Q inversion results

! input jdf.txt
! output Vs_inv.txt, Att_inv.txt

! by Kexin Zhang 03/13/2023

      program main
      implicit none
      
      integer::i,k
      real :: line(5,22) ! each line
      real :: Vs,Q,Att,depth

      open(1,file='jdf.txt')
      open(2,file='Vs_inv.txt')
      open(3,file='Att_inv.txt')

      depth=0

      do i=1,22
         read(1,*)line(:,i)
         Vs=line(4,i)
         Q=line(5,i)
         if (Q .gt. 0) then
          Att=1./Q
         else
          Att=0
         end if
         do k=0,30
           write(2,*)Vs,depth+k/30.0*line(1,i)
           write(3,*)Att,depth+k/30.0*line(1,i)
         end do
         depth=depth+line(1,i)
      end do

      close(1)
      close(2)
      close(3)
      stop
      end program


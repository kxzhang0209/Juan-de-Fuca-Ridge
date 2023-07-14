      program main
      use thermodel
      implicit none
      real :: Tm1,Tm2,Tm3,Tm4,Tm5,Tm6,dT,dX,depth,pressure,p_gpa
      integer :: i
     
      open(1,file='./solidus/drysolidus.txt')
      open(2,file='./solidus/linear_dep_solidus.txt')
      open(3,file='./solidus/simple_dep_solidus.txt')
      open(4,file='./solidus/simple_water_solidus.txt')
      open(5,file='./solidus/linear_fit_solidus.txt')
      open(6,file='./solidus/wet_2000_solidus.txt')
      open(7,file='./water.txt')

      do i=1,200
        depth = i-1
        call hydrostatic_pressure(depth,pressure)
        p_gpa=pressure/1.0e+9
        call predotite_solidus_Katz2003(p_gpa,Tm1)
        call linear_depletion(p_gpa,Tm2)
        call simple_depletion(p_gpa,Tm3)
        call simple_water(p_gpa,Tm4)
        call linear_fit(p_gpa,Tm5)
        call predotite_wetsolidus_Hirschmann2000(p_gpa,Tm6)
        write(1,*)Tm1,depth
        write(2,*)Tm2,depth
        write(3,*)Tm3,depth
        write(4,*)Tm4,depth
        write(5,*)Tm5,depth
        write(6,*)Tm6,depth
        if (i .ge. 70 .and. i .le. 150) then
          dX=((Tm1-Tm5)/75.)**(4/3)
         write(7,*)dX,depth
        else 
          write(7,*)0.02,depth
        end if
      end do
      close(1)
      close(2)
      close(3)
      close(4)
      close(5)
      close(6)
      stop
      end program




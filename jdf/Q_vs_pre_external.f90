!This program is to calculate the Vs and 1/Q prediction out of
!external Temperature profile. Please note that the solidus in
!thermalstart.f90 should be checked and changed in terms of different
!situations of the mantle.

!input: 4 Temperature profiles in ./geotherm/
!output: corresponding Vs, 1/Q

!Kexin Zhang
!last modified: 2023.3.12
       
      program main
      use thermodel
      implicit none

      real::age,seisfreq,temperature,pressure,vs,Q,depth,tmax,u_shear_modulus
      real,parameter::half_srate=30.0! (Ruan et al.,2018)
      real::Tm,eta,J1,J2,Q_b,vs_b
      integer::i,k,fileage
      character(len=100)::inputfile,cTemp,output1,output2
      real::T(2,151)

      seisfreq=0.02!Hz
      
      do k = 0,3
        fileage=k*k
        write(cTemp,'(i3)')k*k
        inputfile=trim(adjustl(cTemp))//'Ma_geotherm.txt'
        output1=trim(adjustl(cTemp))//'Ma_Vs_Ruan.txt'
        output2=trim(adjustl(cTemp))//'Ma_Att_Ruan.txt'
        open(k,file='./geotherm'//'/'//inputfile)
        open(k+4,file='./Ruan'//'/'//output1)!Vs
        open(k+8,file='./Ruan'//'/'//output2)!1/Q
     ! open(1,file='Vs_JDF_dry_0Ma.txt')
     ! open(2,file='Att_JDF_dry_0Ma.txt')
     ! open(3,file='Viscosity-Yamauchi_dry_0Ma.txt')
     ! open(4,file='shear_modulus_dry_0Ma.txt')

     ! open(5,file='Temp_as_long_9Ma.txt')!read T from external profile
      !open(6,file='Temp_aspect.txt')

        do i=1,151
            depth=i-1
            read(k,*)T(:,i)
            temperature = T(1,i) !C
            call hydrostatic_pressure(depth,pressure)
            call yamauchi_takei_2016(depth,temperature,seisfreq,Vs,Q,Tm,eta,J1,J2,Q_b,vs_b)
          ! check the solidus!!!!!!

            write(k+8,*)1./Q,depth
            write(k+4,*)Vs,depth

        end do

        close(k)
        close(k+4)
        close(k+8)
      end do

      stop
      end program







#!/bin/bash 
gmt begin Vs_1d png
   gmt subplot begin 1x4 -Fs9c/16c

   gmt subplot set 0,0
   gmt basemap -R4/5/0/150 -JX9c/-16c -Bxa0.25f0.05+l"shear velocity (km/s)" -Bya25f50+l"depth (km)" -BWSne+t"0Ma"
   gmt psxy 0Ma_Vs_dry.txt -W1.5p,orange -l"Vs (dry solidus)"
  # gmt psxy 0Ma_Vs_trybest.txt -W1.5p,black -l"Vs(trying)"
  # gmt psxy 0Ma_Vs_CE540.txt -W1.5p,pink -l"Vs (CE540)"
   #gmt psxy 0Ma_Vs_simple_water.txt -W1.5p,skyblue -l"0Ma theoretical Vs (simple water)"
   gmt psxy 0Ma_Vs_Ruan.txt -W1.5p,skyblue -l"Vs (Ruan et al.,2018)"
   gmt psxy 0Ma_Vs_trybest.txt -W1.5p,salmon -l"Vs (best fit)" #E=462.5,273,linear_fit
 #  gmt psxy 0Ma_Vs_wet.txt -W1.5p,skyblue -l"Vs (Ruan et al.,2018)"
   gmt psxy Vs_inv.txt -W1.5p,grey -l"inversion result"

   gmt subplot set 0,1
   gmt basemap -R4/5/0/150 -JX9c/-16c -Bxa0.25f0.05+l"shear velocity (km/s)" -Bya25f50+l"depth (km)" -BWSne+t"1Ma"
   gmt psxy 1Ma_Vs_dry.txt -W1.5p,orange #-l"1Ma theoretical Vs (dry)"+jLB
  # gmt psxy 1Ma_Vs_trybest.txt -W1.5p,black #-l"1Ma theoretical Vs (linearly depleted)"
  #gmt psxy 1Ma_Vs_CE540.txt -W1.5p,pink #-l"1Ma theoretical Vs (simple depleted)"
  # gmt psxy 1Ma_Vs_simple_water.txt -W1.5p,skyblue #-l"1Ma theoretical Vs (simple water)"
   gmt psxy 1Ma_Vs_Ruan.txt -W1.5p,skyblue
   gmt psxy 1Ma_Vs_trybest.txt -W1.5p,salmon #-l"0Ma Vs (linear fit)"
  # gmt psxy 1Ma_Vs_wet.txt -W1.5p,skyblue
   gmt psxy Vs_inv.txt -W1.5p,grey #-l"inversion result"

   gmt subplot set 0,2
   gmt basemap -R4/5/0/150 -JX9c/-16c -Bxa0.25f0.05+l"shear velocity (km/s)" -Bya25f50+l"depth (km)" -BWSne+t"4Ma"
   gmt psxy 4Ma_Vs_dry.txt -W1.5p,orange #-l"4Ma theoretical Vs (dry)"+jLB
  # gmt psxy 4Ma_Vs_trybest.txt -W1.5p,black #-l"4Ma theoretical Vs (linearly depleted)"
  # gmt psxy 4Ma_Vs_CE540.txt -W1.5p,pink # -l"4Ma theoretical Vs (simple depleted)"
  # #gmt psxy 4Ma_Vs_simple_water.txt -W1.5p,skyblue #-l"4Ma theoretical Vs (simple water)"
   gmt psxy 4Ma_Vs_Ruan.txt -W1.5p,skyblue
   gmt psxy 4Ma_Vs_trybest.txt -W1.5p,salmon #-l"0Ma Vs (linear fit)"
  # gmt psxy 4Ma_Vs_wet.txt -W1.5p,skyblue
   gmt psxy Vs_inv.txt -W1.5p,grey #-l"inversion result"

   gmt subplot set 0,3
   gmt basemap -R4/5/0/150 -JX9c/-16c -Bxa0.25f0.05+l"shear velocity (km/s)" -Bya25f50+l"depth (km)" -BWSne+t"9Ma"
   gmt psxy 9Ma_Vs_dry.txt -W1.5p,orange #-l"9Ma theoretical Vs (dry)"+jLB
  #gmt psxy 9Ma_Vs_trybest.txt -W1.5p,black #-l"9Ma theoretical Vs (linearly depleted)"
  #gmt psxy 9Ma_Vs_CE540.txt -W1.5p,pink #-l"9Ma theoretical Vs (simple depleted)"  
  # gmt psxy 9Ma_Vs_simple_water.txt -W1.5p,skyblue #-l"9Ma theoretical Vs (simple water)"
  gmt psxy 9Ma_Vs_Ruan.txt -W1.5p,skyblue
  gmt psxy 9Ma_Vs_trybest.txt -W1.5p,salmon #-l"0Ma Vs (linear fit)"
  # gmt psxy 9Ma_Vs_wet.txt -W1.5p,skyblue
   gmt psxy Vs_inv.txt -W1.5p,grey #-l"inversion result"


#gmt subplot set 0,1
  # gmt basemap -R0/0.03/0/150 -JX9c/-16c -Bxa0.01f0.005+l"attenuation (1/Q)" -Bya25f50+l"depth (km)" -BWSne
  # gmt psxy Q_melt_0Mat.txt -W1.5p,brown -l"0Ma"+jLB
  # gmt psxy Q_melt_1Mat.txt -W1.5p,red -l"1Ma"
 #  gmt psxy Q_melt_4Mat.txt -W1.5p,orange -l"4Ma"
#   gmt psxy Q_melt_9Mat.txt -W1.5p,skyblue -l"9Ma"
   #gmt psxy half1464_4Mat.txt -W1p,darkgrey -l"Tp = 1464 @.C"

gmt subplot end 
  gmt end show

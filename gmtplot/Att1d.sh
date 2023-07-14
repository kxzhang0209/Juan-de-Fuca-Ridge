#!/bin/bash

gmt begin Att_1d png
   gmt subplot begin 1x4 -Fs9c/16c

gmt subplot set 0,0
   gmt basemap -R0/0.03/0/150 -JX9c/-16c -Bxa0.01f0.005+l"attenuation (1/Q)" -Bya25f50+l"depth (km)" -BWSne+t"0Ma"
   gmt psxy 0Ma_Att_dry.txt -W1.5p,orange -l"Att(dry solidus)"
  #gmt psxy 0Ma_Att_trybest.txt -W1.5p,black -l"trying"
   #gmt psxy 0Ma_Att_CE540.txt -W1.5p,pink -l"CE540"
   gmt psxy 0Ma_Att_Ruan.txt -W1.5p,skyblue -l"Att(Ruan et al., 2018)"
   gmt psxy 0Ma_Att_trybest.txt -W1.5p,salmon -l"Att(best fit)"
   #gmt psxy 0Ma_Att_Ruan.txt -W1.5p,skyblue -l"prediction (Ruan et al.,2018)"
   gmt psxy Att_inv.txt -W1.5p,grey -l"inversion result"

gmt subplot set 0,1
   gmt basemap -R0/0.03/0/150 -JX9c/-16c -Bxa0.01f0.005+l"attenuation (1/Q)" -Bya25f50+l"depth (km)" -BWSne+t"1Ma"
   gmt psxy 1Ma_Att_dry.txt -W1.5p,orange #-l"1Ma prediction (dry)"+jLB
 #  gmt psxy 1Ma_Att_trybest.txt -W1.5p,black #-l"1Ma prediction (linear depleted)"
  #gmt psxy 1Ma_Att_CE540.txt -W1.5p,pink #-l"1Ma prediction (simple depleted)"
   gmt psxy 1Ma_Att_Ruan.txt -W1.5p,skyblue #-l"1Ma prediction (simple water)"
   gmt psxy 1Ma_Att_trybest.txt -W1.5p,salmon
  # gmt psxy 1Ma_Att_Ruan.txt -W1.5p,skyblue
   gmt psxy Att_inv.txt -W1.5p,grey #-l"inversion result"

gmt subplot set 0,2
   gmt basemap -R0/0.03/0/150 -JX9c/-16c -Bxa0.01f0.005+l"attenuation (1/Q)" -Bya25f50+l"depth (km)" -BWSne+t"4Ma"
   gmt psxy 4Ma_Att_dry.txt -W1.5p,orange #-l"4Ma prediction (dry)"+jLB
   #gmt psxy 4Ma_Att_trybest.txt -W1.5p,black #-l"4Ma prediction (linear depleted)"
   #gmt psxy 4Ma_Att_CE540.txt -W1.5p,pink #-l"4Ma prediction (simple depleted)"
   gmt psxy 4Ma_Att_Ruan.txt -W1.5p,skyblue #-l"4Ma prediction (simple water)"
   gmt psxy 4Ma_Att_trybest.txt -W1.5p,salmon
   #gmt psxy 4Ma_Att_Ruan.txt -W1.5p,skyblue
   gmt psxy Att_inv.txt -W1.5p,grey  #-l"inversion result"

gmt subplot set 0,3
   gmt basemap -R0/0.03/0/150 -JX9c/-16c -Bxa0.01f0.005+l"attenuation (1/Q)" -Bya25f50+l"depth (km)" -BWSne+t"9Ma"
   gmt psxy 9Ma_Att_dry.txt -W1.5p,orange #-l"9Ma prediction (dry)"+jLB
   #gmt psxy 9Ma_Att_trybest.txt -W1.5p,black #-l"9Ma prediction (linear depleted)"
  # gmt psxy 9Ma_Att_CE540.txt -W1.5p,pink #-l"9Ma prediction (simple depleted)"
   gmt psxy 9Ma_Att_Ruan.txt -W1.5p,skyblue #-l"9Ma prediction (simple water)"
   gmt psxy 9Ma_Att_trybest.txt -W1.5p,salmon
  # gmt psxy 9Ma_Att_Ruan.txt -W1.5p,skyblue
   gmt psxy Att_inv.txt -W1.5p,grey #-l"inversion result"
   
gmt subplot end
  gmt end show

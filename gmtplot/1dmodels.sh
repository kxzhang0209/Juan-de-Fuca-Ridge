#!/bin/bash
#aim:compare different thermal models

gmt begin solidus_models png
   gmt subplot begin 1x4 -Fs9c/16c
  
   gmt subplot set 0,0
   gmt basemap -R0/1700/0/150 -JX9c/-16c -Bxa500f100+l"temperature(@.C)" -Bya25f50+l"depth(km)" -BWSne+t"0Ma"
   gmt psxy 0Ma_geotherm.txt -W1.5p,grey -l"geotherm"
   gmt psxy drysolidus.txt -W1.5p,orange -l"dry peridotite solidus (Katz,2003)"
  # gmt psxy linear_dep_solidus.txt -W1.5p,red -l"linearly depleted solidus"
   #gmt psxy simple_dep_solidus.txt -W1.5p,pink -l"simple depleted solidus"
 #  gmt psxy simple_water_solidus.txt -W1.5p,skyblue -l"simple water solidus"
   gmt psxy wet_2000_solidus.txt -W1.5p,skyblue -l"wet solidus (Ruan et al.,2018)"
   gmt psxy linear_fit_solidus.txt -W1.5p,salmon -l"best fit solidus"
 #  gmt psxy wet_2000_solidus.txt -W1.5p,green -l"wet (2000) solidus"

gmt subplot set 0,1
   gmt basemap -R0/1700/0/150 -JX9c/-16c -Bxa500f100+l"temperature(@.C)" -Bya25f50+l"depth(km)" -BWSne+t"1Ma"
   gmt psxy 1Ma_geotherm.txt -W1.5p,grey #-l"geotherm"+jLB
   gmt psxy drysolidus.txt -W1.5p,orange #-l"dry peridotite solidus (Katz,2003)"
  # gmt psxy linear_dep_solidus.txt -W1.5p,red #-l"linearly depleted solidus"
   #gmt psxy simple_dep_solidus.txt -W1.5p,pink #-l"simple depleted solidus"
  # gmt psxy simple_water_solidus.txt -W1.5p,skyblue #-l"simple water solidus"
   gmt psxy wet_2000_solidus.txt -W1.5p,skyblue #-l"wet (2000) solidus"
   gmt psxy linear_fit_solidus.txt -W1.5p,salmon #-l"linear fit solidus"
  

gmt subplot set 0,2
   gmt basemap -R0/1700/0/150 -JX9c/-16c -Bxa500f100+l"temperature(@.C)" -Bya25f50+l"depth(km)" -BWSne+t"4Ma"
  # gmt psxy half1350_4Ma.txt -W1p,skyblue -l"conductive (halfspace cooling)"+jLB
  # gmt psxy latent4Ma.txt -W1p,orange -l"conductive+convective+latent heat"
  # gmt psxy melt4Ma.txt -W1p,salmon -l"conductive+convective+latent heat+melt migration"
 #  gmt psxy solidus.txt -W1p,lightgrey -l"dry solidus of peridotite"

   gmt psxy 4Ma_geotherm.txt -W1.5p,grey #-l"geotherm"+jLB
   gmt psxy drysolidus.txt -W1.5p,orange #-l"dry peridotite solidus (Katz,2003)"
 #  gmt psxy linear_dep_solidus.txt -W1.5p,red #-l"linearly depleted solidus"
 #  gmt psxy simple_dep_solidus.txt -W1.5p,pink #-l"simple depleted solidus"
 #  gmt psxy simple_water_solidus.txt -W1.5p,skyblue #-l"simple water solidus"
   gmt psxy wet_2000_solidus.txt -W1.5p,skyblue
   gmt psxy linear_fit_solidus.txt -W1.5p,salmon #-l"linear fit solidus"
 #  gmt psxy wet_2000_solidus.txt -W1.5p,green

gmt subplot set 0,3
   gmt basemap -R0/1700/0/150 -JX9c/-16c -Bxa500f100+l"temperature(@.C)" -Bya25f50+l"depth(km)" -BWSne+t"9Ma"
   #gmt psxy half1350_9Ma.txt -W1p,skyblue -l"conductive (halfspace cooling)"+jLB
   #gmt psxy latent9Ma.txt -W1p,orange -l"conductive+convective+latent heat"
   #gmt psxy melt9Ma.txt -W1p,salmon -l"conductive+convective+latent heat+melt migration"
   #gmt psxy solidus.txt -W1p,lightgrey #-l"simple depleted solidus"
   gmt psxy 9Ma_geotherm.txt -W1.5p,grey #-l"geotherm"+jLB
   gmt psxy drysolidus.txt -W1.5p,orange #-l"dry peridotite solidus (Katz,2003)"
  # gmt psxy linear_dep_solidus.txt -W1.5p,red #-l"linearly depleted solidus"
  # gmt psxy simple_dep_solidus.txt -W1.5p,pink #-l"simple depleted solidus"
  # gmt psxy simple_water_solidus.txt -W1.5p,skyblue #-l"simple water solidus"
   gmt psxy wet_2000_solidus.txt -W1.5p,skyblue
   gmt psxy linear_fit_solidus.txt -W1.5p,salmon #-l"linear fit solidus"
 


gmt subplot end

gmt end show

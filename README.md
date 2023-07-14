# Juan-de-Fuca-Ridge
Undergraduate thesis project
by K.X.Zhang.
Please reach out at kexin.zhang@yale.edu if you have any questions.

These codes aim to generate theoretical shear velocity and attenuation structures based on thermal model and solidus model

Please change branch to "master".

In ./jdf:
File thermalstart.f90 is the most important one. You can also edit the solidus model in it and chose your solidus model by editing subroutine yamauchi_takei_2016. 
File Q_vs_pre_external.f90 can generate predictions from external thermal model and thermalstart.f90. You can change the corresponding output files when you try different solidus models.
Please put your chosen thermal models in ./jdf/geotherm if you want to use Q_vs_pre_external.f90.

In ./gmtplot:
File *.sh is written to plot different pictures with GMT. Since I was a white hand when I wrote these codes, I would suggest you write your own codes to plot rather than spending time understanding mine.

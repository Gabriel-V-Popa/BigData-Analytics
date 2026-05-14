v 1 START
v 2 ERRegistration
v 3 Leucocytes
v 4 CRP
v 5 ERTriage
v 6 ERSepsisTriage
v 7 IVLiquid
v 8 IVAntibiotics
v 9 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__Leucocytes
e 3 4  Leucocytes__CRP
e 4 5  CRP__ERTriage
e 5 6  ERTriage__ERSepsisTriage
e 6 7  ERSepsisTriage__IVLiquid
e 8 9  IVAntibiotics__END
e 7 8  IVLiquid__IVAntibiotics


v 1 START
v 2 CRP
v 3 Leucocytes
v 4 ERRegistration
v 5 ERTriage
v 6 ERSepsisTriage
v 7 Leucocytes
v 8 CRP
v 9 IVLiquid
v 10 IVAntibiotics
v 11 END
e 4 5  ERRegistration__ERTriage
e 6 7  ERSepsisTriage__Leucocytes
e 5 6  ERTriage__ERSepsisTriage
e 1 2  START__CRP
e 3 4  Leucocytes__ERRegistration
e 2 3  CRP__Leucocytes
e 7 8  Leucocytes__CRP
e 10 11  IVAntibiotics__END
e 8 9  CRP__IVLiquid
e 9 10  IVLiquid__IVAntibiotics


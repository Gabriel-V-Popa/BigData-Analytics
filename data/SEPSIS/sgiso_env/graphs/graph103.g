v 1 START
v 2 CRP
v 3 Leucocytes
v 4 ERRegistration
v 5 ERTriage
v 6 Leucocytes
v 7 CRP
v 8 ERSepsisTriage
v 9 IVLiquid
v 10 IVAntibiotics
v 11 END
e 4 5  ERRegistration__ERTriage
e 7 8  CRP__ERSepsisTriage
e 1 2  START__CRP
e 3 4  Leucocytes__ERRegistration
e 2 3  CRP__Leucocytes
e 5 6  ERTriage__Leucocytes
e 6 7  Leucocytes__CRP
e 8 9  ERSepsisTriage__IVLiquid
e 10 11  IVAntibiotics__END
e 9 10  IVLiquid__IVAntibiotics


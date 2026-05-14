v 1 START
v 2 ERRegistration
v 3 Leucocytes
v 4 LacticAcid
v 5 CRP
v 6 ERTriage
v 7 ERSepsisTriage
v 8 IVLiquid
v 9 IVAntibiotics
v 10 Leucocytes
v 11 END
e 1 2  START__ERRegistration
e 10 11  Leucocytes__END
e 2 3  ERRegistration__Leucocytes
e 4 5  LacticAcid__CRP
e 3 4  Leucocytes__LacticAcid
e 5 6  CRP__ERTriage
e 6 7  ERTriage__ERSepsisTriage
e 7 8  ERSepsisTriage__IVLiquid
e 9 10  IVAntibiotics__Leucocytes
e 8 9  IVLiquid__IVAntibiotics


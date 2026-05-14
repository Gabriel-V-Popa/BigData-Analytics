v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 IVLiquid
v 5 Leucocytes
v 6 CRP
v 7 Leucocytes
v 8 LacticAcid
v 9 ERSepsisTriage
v 10 IVAntibiotics
v 11 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  CRP__Leucocytes
e 3 4  ERTriage__IVLiquid
e 5 6  Leucocytes__CRP
e 4 5  IVLiquid__Leucocytes
e 7 8  Leucocytes__LacticAcid
e 10 11  IVAntibiotics__END
e 8 9  LacticAcid__ERSepsisTriage
e 9 10  ERSepsisTriage__IVAntibiotics


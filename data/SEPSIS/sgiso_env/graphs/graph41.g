v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 IVAntibiotics
v 7 LacticAcid
v 8 CRP
v 9 Leucocytes
v 10 Leucocytes
v 11 CRP
v 12 LacticAcid
v 13 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 8 9  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 7 8  LacticAcid__CRP
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__IVAntibiotics
e 6 7  IVAntibiotics__LacticAcid
e 9 10  Leucocytes__Leucocytes
e 12 13  LacticAcid__END
e 10 11  Leucocytes__CRP
e 11 12  CRP__LacticAcid


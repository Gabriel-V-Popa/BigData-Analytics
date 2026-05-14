v 1 START
v 2 ERSepsisTriage
v 3 IVLiquid
v 4 IVAntibiotics
v 5 ERRegistration
v 6 ERTriage
v 7 LacticAcid
v 8 CRP
v 9 Leucocytes
v 10 LacticAcid
v 11 CRP
v 12 Leucocytes
v 13 END
e 5 6  ERRegistration__ERTriage
e 8 9  CRP__Leucocytes
e 11 12  CRP__Leucocytes
e 12 13  Leucocytes__END
e 1 2  START__ERSepsisTriage
e 4 5  IVAntibiotics__ERRegistration
e 2 3  ERSepsisTriage__IVLiquid
e 3 4  IVLiquid__IVAntibiotics
e 6 7  ERTriage__LacticAcid
e 7 8  LacticAcid__CRP
e 9 10  Leucocytes__LacticAcid
e 10 11  LacticAcid__CRP


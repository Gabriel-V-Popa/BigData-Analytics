v 1 START
v 2 ERRegistration
v 3 LacticAcid
v 4 CRP
v 5 Leucocytes
v 6 ERTriage
v 7 ERSepsisTriage
v 8 LacticAcid
v 9 LacticAcid
v 10 IVLiquid
v 11 IVAntibiotics
v 12 END
e 1 2  START__ERRegistration
e 4 5  CRP__Leucocytes
e 2 3  ERRegistration__LacticAcid
e 3 4  LacticAcid__CRP
e 5 6  Leucocytes__ERTriage
e 11 12  IVAntibiotics__END
e 6 7  ERTriage__ERSepsisTriage
e 7 8  ERSepsisTriage__LacticAcid
e 8 9  LacticAcid__LacticAcid
e 9 10  LacticAcid__IVLiquid
e 10 11  IVLiquid__IVAntibiotics


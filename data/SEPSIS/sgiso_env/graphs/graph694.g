v 1 START
v 2 ERRegistration
v 3 Leucocytes
v 4 LacticAcid
v 5 CRP
v 6 ERTriage
v 7 ERSepsisTriage
v 8 IVAntibiotics
v 9 IVLiquid
v 10 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__Leucocytes
e 4 5  LacticAcid__CRP
e 3 4  Leucocytes__LacticAcid
e 5 6  CRP__ERTriage
e 6 7  ERTriage__ERSepsisTriage
e 7 8  ERSepsisTriage__IVAntibiotics
e 9 10  IVLiquid__END
e 8 9  IVAntibiotics__IVLiquid


v 1 START
v 2 ERRegistration
v 3 CRP
v 4 LacticAcid
v 5 Leucocytes
v 6 IVLiquid
v 7 ERTriage
v 8 ERSepsisTriage
v 9 IVAntibiotics
v 10 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__CRP
e 3 4  CRP__LacticAcid
e 4 5  LacticAcid__Leucocytes
e 5 6  Leucocytes__IVLiquid
e 9 10  IVAntibiotics__END
e 6 7  IVLiquid__ERTriage
e 7 8  ERTriage__ERSepsisTriage
e 8 9  ERSepsisTriage__IVAntibiotics


v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 LacticAcid
v 5 CRP
v 6 Leucocytes
v 7 ERSepsisTriage
v 8 IVLiquid
v 9 IVAntibiotics
v 10 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 3 4  ERTriage__LacticAcid
e 4 5  LacticAcid__CRP
e 6 7  Leucocytes__ERSepsisTriage
e 9 10  IVAntibiotics__END
e 7 8  ERSepsisTriage__IVLiquid
e 8 9  IVLiquid__IVAntibiotics


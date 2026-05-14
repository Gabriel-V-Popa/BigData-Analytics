v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 CRP
v 5 Leucocytes
v 6 ERSepsisTriage
v 7 IVLiquid
v 8 LacticAcid
v 9 IVAntibiotics
v 10 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__CRP
e 4 5  CRP__Leucocytes
e 5 6  Leucocytes__ERSepsisTriage
e 9 10  IVAntibiotics__END
e 6 7  ERSepsisTriage__IVLiquid
e 7 8  IVLiquid__LacticAcid
e 8 9  LacticAcid__IVAntibiotics


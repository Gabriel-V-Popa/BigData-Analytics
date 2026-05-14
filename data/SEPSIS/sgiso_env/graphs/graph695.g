v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 Leucocytes
v 7 IVLiquid
v 8 IVAntibiotics
v 9 LacticAcid
v 10 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 8 9  IVAntibiotics__LacticAcid
e 9 10  LacticAcid__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 6 7  Leucocytes__IVLiquid
e 7 8  IVLiquid__IVAntibiotics


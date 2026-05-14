v 1 START
v 2 ERRegistration
v 3 IVLiquid
v 4 ERTriage
v 5 ERSepsisTriage
v 6 LacticAcid
v 7 CRP
v 8 Leucocytes
v 9 IVAntibiotics
v 10 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__IVLiquid
e 7 8  CRP__Leucocytes
e 3 4  IVLiquid__ERTriage
e 6 7  LacticAcid__CRP
e 4 5  ERTriage__ERSepsisTriage
e 5 6  ERSepsisTriage__LacticAcid
e 8 9  Leucocytes__IVAntibiotics
e 9 10  IVAntibiotics__END


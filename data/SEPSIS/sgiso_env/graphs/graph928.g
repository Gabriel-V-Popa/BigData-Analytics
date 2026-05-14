v 1 START
v 2 ERRegistration
v 3 Leucocytes
v 4 CRP
v 5 LacticAcid
v 6 IVLiquid
v 7 ERTriage
v 8 ERSepsisTriage
v 9 IVAntibiotics
v 10 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__Leucocytes
e 3 4  Leucocytes__CRP
e 4 5  CRP__LacticAcid
e 7 8  ERTriage__ERSepsisTriage
e 5 6  LacticAcid__IVLiquid
e 6 7  IVLiquid__ERTriage
e 8 9  ERSepsisTriage__IVAntibiotics
e 9 10  IVAntibiotics__END


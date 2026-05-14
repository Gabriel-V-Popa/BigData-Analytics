v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 IVLiquid
v 5 Leucocytes
v 6 CRP
v 7 LacticAcid
v 8 ERSepsisTriage
v 9 IVAntibiotics
v 10 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__IVLiquid
e 5 6  Leucocytes__CRP
e 4 5  IVLiquid__Leucocytes
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__ERSepsisTriage
e 8 9  ERSepsisTriage__IVAntibiotics
e 9 10  IVAntibiotics__END


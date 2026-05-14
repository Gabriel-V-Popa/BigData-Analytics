v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVAntibiotics
v 6 CRP
v 7 LacticAcid
v 8 Leucocytes
v 9 IVLiquid
v 10 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__ERSepsisTriage
e 5 6  IVAntibiotics__CRP
e 4 5  ERSepsisTriage__IVAntibiotics
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__Leucocytes
e 8 9  Leucocytes__IVLiquid
e 9 10  IVLiquid__END


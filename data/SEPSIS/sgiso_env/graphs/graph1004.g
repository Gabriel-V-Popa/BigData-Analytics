v 1 START
v 2 ERTriage
v 3 ERRegistration
v 4 Leucocytes
v 5 CRP
v 6 LacticAcid
v 7 ERSepsisTriage
v 8 IVAntibiotics
v 9 END
e 1 2  START__ERTriage
e 2 3  ERTriage__ERRegistration
e 3 4  ERRegistration__Leucocytes
e 4 5  Leucocytes__CRP
e 5 6  CRP__LacticAcid
e 6 7  LacticAcid__ERSepsisTriage
e 7 8  ERSepsisTriage__IVAntibiotics
e 8 9  IVAntibiotics__END


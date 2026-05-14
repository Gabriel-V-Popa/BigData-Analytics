v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 Leucocytes
v 5 CRP
v 6 LacticAcid
v 7 ERSepsisTriage
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionIC
v 11 Leucocytes
v 12 CRP
v 13 LacticAcid
v 14 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__Leucocytes
e 4 5  Leucocytes__CRP
e 5 6  CRP__LacticAcid
e 6 7  LacticAcid__ERSepsisTriage
e 7 8  ERSepsisTriage__IVLiquid
e 10 11  AdmissionIC__Leucocytes
e 8 9  IVLiquid__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionIC
e 11 12  Leucocytes__CRP
e 13 14  LacticAcid__END
e 12 13  CRP__LacticAcid


v 1 START
v 2 IVLiquid
v 3 ERRegistration
v 4 ERTriage
v 5 Leucocytes
v 6 CRP
v 7 LacticAcid
v 8 ERSepsisTriage
v 9 IVAntibiotics
v 10 AdmissionIC
v 11 LacticAcid
v 12 CRP
v 13 Leucocytes
v 14 END
e 3 4  ERRegistration__ERTriage
e 9 10  IVAntibiotics__AdmissionIC
e 9 11  IVAntibiotics__LacticAcid
e 13 14  Leucocytes__END
e 8 9  ERSepsisTriage__IVAntibiotics
e 1 2  START__IVLiquid
e 2 3  IVLiquid__ERRegistration
e 4 5  ERTriage__Leucocytes
e 5 6  Leucocytes__CRP
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__ERSepsisTriage
e 10 12  AdmissionIC__CRP
e 11 12  LacticAcid__CRP
e 12 13  CRP__Leucocytes


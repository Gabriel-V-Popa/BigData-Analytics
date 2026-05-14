v 1 START
v 2 ERRegistration
v 3 ERSepsisTriage
v 4 ERTriage
v 5 CRP
v 6 Leucocytes
v 7 IVLiquid
v 8 IVAntibiotics
v 9 LacticAcid
v 10 AdmissionIC
v 11 Leucocytes
v 12 CRP
v 13 Leucocytes
v 14 LacticAcid
v 15 Leucocytes
v 16 CRP
v 17 LacticAcid
v 18 Leucocytes
v 19 END
e 1 2  START__ERRegistration
e 4 5  ERTriage__CRP
e 5 6  CRP__Leucocytes
e 8 9  IVAntibiotics__LacticAcid
e 8 10  IVAntibiotics__AdmissionIC
e 9 11  LacticAcid__Leucocytes
e 10 11  AdmissionIC__Leucocytes
e 11 12  Leucocytes__CRP
e 12 13  CRP__Leucocytes
e 14 15  LacticAcid__Leucocytes
e 15 16  Leucocytes__CRP
e 18 19  Leucocytes__END
e 13 14  Leucocytes__LacticAcid
e 2 3  ERRegistration__ERSepsisTriage
e 3 4  ERSepsisTriage__ERTriage
e 6 7  Leucocytes__IVLiquid
e 7 8  IVLiquid__IVAntibiotics
e 16 17  CRP__LacticAcid
e 17 18  LacticAcid__Leucocytes


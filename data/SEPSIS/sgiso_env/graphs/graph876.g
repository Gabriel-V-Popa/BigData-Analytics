v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 CRP
v 5 LacticAcid
v 6 Leucocytes
v 7 ERSepsisTriage
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionIC
v 11 Leucocytes
v 12 CRP
v 13 LacticAcid
v 14 CRP
v 15 Leucocytes
v 16 LacticAcid
v 17 ReleaseB
v 18 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__CRP
e 9 10  IVAntibiotics__AdmissionIC
e 9 13  IVAntibiotics__LacticAcid
e 4 5  CRP__LacticAcid
e 5 6  LacticAcid__Leucocytes
e 6 7  Leucocytes__ERSepsisTriage
e 8 9  IVLiquid__IVAntibiotics
e 7 8  ERSepsisTriage__IVLiquid
e 10 11  AdmissionIC__Leucocytes
e 11 12  Leucocytes__CRP
e 13 14  LacticAcid__CRP
e 12 14  CRP__CRP
e 14 15  CRP__Leucocytes
e 15 16  Leucocytes__LacticAcid
e 17 18  ReleaseB__END
e 16 17  LacticAcid__ReleaseB


v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 Leucocytes
v 7 LacticAcid
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionIC
v 11 CRP
v 12 Leucocytes
v 13 LacticAcid
v 14 AdmissionNC
v 15 AdmissionNC
v 16 Leucocytes
v 17 CRP
v 18 ReleaseD
v 19 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 9 10  IVAntibiotics__AdmissionIC
e 9 13  IVAntibiotics__LacticAcid
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 6 7  Leucocytes__LacticAcid
e 8 9  IVLiquid__IVAntibiotics
e 7 8  LacticAcid__IVLiquid
e 10 11  AdmissionIC__CRP
e 11 12  CRP__Leucocytes
e 13 14  LacticAcid__AdmissionNC
e 12 14  Leucocytes__AdmissionNC
e 15 16  AdmissionNC__Leucocytes
e 14 15  AdmissionNC__AdmissionNC
e 16 17  Leucocytes__CRP
e 18 19  ReleaseD__END
e 17 18  CRP__ReleaseD


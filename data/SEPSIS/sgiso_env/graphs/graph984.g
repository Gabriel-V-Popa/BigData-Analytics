v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 Leucocytes
v 7 CRP
v 8 LacticAcid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 AdmissionIC
v 12 LacticAcid
v 13 Leucocytes
v 14 CRP
v 15 LacticAcid
v 16 CRP
v 17 Leucocytes
v 18 AdmissionNC
v 19 ReleaseB
v 20 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 11 13  AdmissionIC__Leucocytes
e 12 13  LacticAcid__Leucocytes
e 13 14  Leucocytes__CRP
e 17 18  Leucocytes__AdmissionNC
e 17 19  Leucocytes__ReleaseB
e 18 20  AdmissionNC__END
e 19 20  ReleaseB__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__Leucocytes
e 6 7  Leucocytes__CRP
e 8 9  LacticAcid__IVAntibiotics
e 7 8  CRP__LacticAcid
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__AdmissionIC
e 10 12  AdmissionNC__LacticAcid
e 14 15  CRP__LacticAcid
e 16 17  CRP__Leucocytes
e 15 16  LacticAcid__CRP


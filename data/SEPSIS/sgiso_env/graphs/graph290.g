v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 Leucocytes
v 7 CRP
v 8 LacticAcid
v 9 IVAntibiotics
v 10 AdmissionIC
v 11 Leucocytes
v 12 CRP
v 13 LacticAcid
v 14 CRP
v 15 LacticAcid
v 16 Leucocytes
v 17 Leucocytes
v 18 LacticAcid
v 19 CRP
v 20 AdmissionNC
v 21 ReleaseB
v 22 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 9 10  IVAntibiotics__AdmissionIC
e 9 13  IVAntibiotics__LacticAcid
e 20 22  AdmissionNC__END
e 21 22  ReleaseB__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__Leucocytes
e 6 7  Leucocytes__CRP
e 8 9  LacticAcid__IVAntibiotics
e 7 8  CRP__LacticAcid
e 10 11  AdmissionIC__Leucocytes
e 11 12  Leucocytes__CRP
e 13 14  LacticAcid__CRP
e 12 14  CRP__CRP
e 15 16  LacticAcid__Leucocytes
e 14 15  CRP__LacticAcid
e 16 17  Leucocytes__Leucocytes
e 19 20  CRP__AdmissionNC
e 19 21  CRP__ReleaseB
e 17 18  Leucocytes__LacticAcid
e 18 19  LacticAcid__CRP


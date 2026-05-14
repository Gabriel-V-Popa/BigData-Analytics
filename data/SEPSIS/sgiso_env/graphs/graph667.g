v 1 START
v 2 CRP
v 3 ERRegistration
v 4 ERTriage
v 5 ERSepsisTriage
v 6 IVLiquid
v 7 LacticAcid
v 8 Leucocytes
v 9 CRP
v 10 IVAntibiotics
v 11 AdmissionNC
v 12 AdmissionIC
v 13 Leucocytes
v 14 LacticAcid
v 15 CRP
v 16 LacticAcid
v 17 CRP
v 18 Leucocytes
v 19 AdmissionNC
v 20 Leucocytes
v 21 CRP
v 22 Leucocytes
v 23 CRP
v 24 ReleaseA
v 25 END
e 3 4  ERRegistration__ERTriage
e 18 19  Leucocytes__AdmissionNC
e 21 22  CRP__Leucocytes
e 4 5  ERTriage__ERSepsisTriage
e 1 2  START__CRP
e 2 3  CRP__ERRegistration
e 5 6  ERSepsisTriage__IVLiquid
e 7 8  LacticAcid__Leucocytes
e 6 7  IVLiquid__LacticAcid
e 8 9  Leucocytes__CRP
e 9 10  CRP__IVAntibiotics
e 10 11  IVAntibiotics__AdmissionNC
e 11 12  AdmissionNC__AdmissionIC
e 11 14  AdmissionNC__LacticAcid
e 12 13  AdmissionIC__Leucocytes
e 14 15  LacticAcid__CRP
e 13 15  Leucocytes__CRP
e 17 18  CRP__Leucocytes
e 15 16  CRP__LacticAcid
e 16 17  LacticAcid__CRP
e 19 20  AdmissionNC__Leucocytes
e 20 21  Leucocytes__CRP
e 22 23  Leucocytes__CRP
e 24 25  ReleaseA__END
e 23 24  CRP__ReleaseA


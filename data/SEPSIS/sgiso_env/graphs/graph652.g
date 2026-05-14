v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 LacticAcid
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 AdmissionNC
v 12 CRP
v 13 Leucocytes
v 14 AdmissionIC
v 15 CRP
v 16 LacticAcid
v 17 Leucocytes
v 18 Leucocytes
v 19 LacticAcid
v 20 CRP
v 21 AdmissionNC
v 22 CRP
v 23 Leucocytes
v 24 AdmissionNC
v 25 CRP
v 26 Leucocytes
v 27 Leucocytes
v 28 CRP
v 29 CRP
v 30 Leucocytes
v 31 CRP
v 32 Leucocytes
v 33 CRP
v 34 ReleaseE
v 35 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 12 13  CRP__Leucocytes
e 16 17  LacticAcid__Leucocytes
e 21 22  AdmissionNC__CRP
e 22 23  CRP__Leucocytes
e 23 24  Leucocytes__AdmissionNC
e 24 25  AdmissionNC__CRP
e 25 26  CRP__Leucocytes
e 30 31  Leucocytes__CRP
e 31 32  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 13 14  Leucocytes__AdmissionIC
e 13 16  Leucocytes__LacticAcid
e 5 6  Leucocytes__CRP
e 7 8  LacticAcid__IVLiquid
e 6 7  CRP__LacticAcid
e 8 9  IVLiquid__IVAntibiotics
e 11 12  AdmissionNC__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__AdmissionNC
e 15 17  CRP__Leucocytes
e 14 15  AdmissionIC__CRP
e 17 18  Leucocytes__Leucocytes
e 20 21  CRP__AdmissionNC
e 18 19  Leucocytes__LacticAcid
e 19 20  LacticAcid__CRP
e 26 27  Leucocytes__Leucocytes
e 27 28  Leucocytes__CRP
e 28 29  CRP__CRP
e 29 30  CRP__Leucocytes
e 32 33  Leucocytes__CRP
e 34 35  ReleaseE__END
e 33 34  CRP__ReleaseE


v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 LacticAcid
v 6 Leucocytes
v 7 CRP
v 8 AdmissionNC
v 9 AdmissionNC
v 10 IVAntibiotics
v 11 IVLiquid
v 12 CRP
v 13 Leucocytes
v 14 CRP
v 15 Leucocytes
v 16 CRP
v 17 CRP
v 18 Leucocytes
v 19 AdmissionNC
v 20 AdmissionIC
v 21 LacticAcid
v 22 Leucocytes
v 23 CRP
v 24 CRP
v 25 Leucocytes
v 26 LacticAcid
v 27 AdmissionNC
v 28 ReleaseA
v 29 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 11 12  IVLiquid__CRP
e 12 13  CRP__Leucocytes
e 13 14  Leucocytes__CRP
e 14 15  CRP__Leucocytes
e 15 16  Leucocytes__CRP
e 20 22  AdmissionIC__Leucocytes
e 21 22  LacticAcid__Leucocytes
e 22 23  Leucocytes__CRP
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__LacticAcid
e 5 6  LacticAcid__Leucocytes
e 6 7  Leucocytes__CRP
e 7 8  CRP__AdmissionNC
e 8 9  AdmissionNC__AdmissionNC
e 10 11  IVAntibiotics__IVLiquid
e 9 10  AdmissionNC__IVAntibiotics
e 16 17  CRP__CRP
e 17 18  CRP__Leucocytes
e 18 19  Leucocytes__AdmissionNC
e 19 20  AdmissionNC__AdmissionIC
e 19 21  AdmissionNC__LacticAcid
e 23 24  CRP__CRP
e 24 25  CRP__Leucocytes
e 25 26  Leucocytes__LacticAcid
e 26 27  LacticAcid__AdmissionNC
e 27 28  AdmissionNC__ReleaseA
e 28 29  ReleaseA__END


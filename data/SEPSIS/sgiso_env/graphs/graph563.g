v 1 START
v 2 Leucocytes
v 3 CRP
v 4 ERRegistration
v 5 ERTriage
v 6 ERSepsisTriage
v 7 IVAntibiotics
v 8 AdmissionNC
v 9 CRP
v 10 Leucocytes
v 11 AdmissionNC
v 12 CRP
v 13 Leucocytes
v 14 AdmissionNC
v 15 AdmissionIC
v 16 Leucocytes
v 17 LacticAcid
v 18 CRP
v 19 CRP
v 20 LacticAcid
v 21 Leucocytes
v 22 Leucocytes
v 23 Leucocytes
v 24 LacticAcid
v 25 CRP
v 26 AdmissionNC
v 27 Leucocytes
v 28 CRP
v 29 Leucocytes
v 30 CRP
v 31 Leucocytes
v 32 CRP
v 33 CRP
v 34 Leucocytes
v 35 ReleaseA
v 36 END
e 4 5  ERRegistration__ERTriage
e 9 10  CRP__Leucocytes
e 10 11  Leucocytes__AdmissionNC
e 11 12  AdmissionNC__CRP
e 12 13  CRP__Leucocytes
e 13 14  Leucocytes__AdmissionNC
e 27 28  Leucocytes__CRP
e 28 29  CRP__Leucocytes
e 29 30  Leucocytes__CRP
e 30 31  CRP__Leucocytes
e 31 32  Leucocytes__CRP
e 1 2  START__Leucocytes
e 3 4  CRP__ERRegistration
e 2 3  Leucocytes__CRP
e 5 6  ERTriage__ERSepsisTriage
e 8 9  AdmissionNC__CRP
e 6 7  ERSepsisTriage__IVAntibiotics
e 7 8  IVAntibiotics__AdmissionNC
e 14 15  AdmissionNC__AdmissionIC
e 17 18  LacticAcid__CRP
e 15 16  AdmissionIC__Leucocytes
e 16 17  Leucocytes__LacticAcid
e 18 19  CRP__CRP
e 20 21  LacticAcid__Leucocytes
e 19 20  CRP__LacticAcid
e 21 22  Leucocytes__Leucocytes
e 24 25  LacticAcid__CRP
e 22 23  Leucocytes__Leucocytes
e 23 24  Leucocytes__LacticAcid
e 25 26  CRP__AdmissionNC
e 26 27  AdmissionNC__Leucocytes
e 32 33  CRP__CRP
e 33 34  CRP__Leucocytes
e 34 35  Leucocytes__ReleaseA
e 35 36  ReleaseA__END


v 1 START
v 2 ERRegistration
v 3 Leucocytes
v 4 CRP
v 5 LacticAcid
v 6 ERTriage
v 7 ERSepsisTriage
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 AdmissionNC
v 11 Leucocytes
v 12 CRP
v 13 AdmissionNC
v 14 AdmissionIC
v 15 LacticAcid
v 16 CRP
v 17 Leucocytes
v 18 LacticAcid
v 19 CRP
v 20 Leucocytes
v 21 Leucocytes
v 22 LacticAcid
v 23 CRP
v 24 AdmissionNC
v 25 Leucocytes
v 26 CRP
v 27 CRP
v 28 Leucocytes
v 29 CRP
v 30 ReleaseA
v 31 END
e 1 2  START__ERRegistration
e 16 17  CRP__Leucocytes
e 19 20  CRP__Leucocytes
e 25 26  Leucocytes__CRP
e 2 3  ERRegistration__Leucocytes
e 3 4  Leucocytes__CRP
e 4 5  CRP__LacticAcid
e 6 7  ERTriage__ERSepsisTriage
e 5 6  LacticAcid__ERTriage
e 7 8  ERSepsisTriage__IVAntibiotics
e 10 11  AdmissionNC__Leucocytes
e 8 9  IVAntibiotics__AdmissionNC
e 9 10  AdmissionNC__AdmissionNC
e 11 12  Leucocytes__CRP
e 12 13  CRP__AdmissionNC
e 13 14  AdmissionNC__AdmissionIC
e 15 16  LacticAcid__CRP
e 14 15  AdmissionIC__LacticAcid
e 17 18  Leucocytes__LacticAcid
e 18 19  LacticAcid__CRP
e 20 21  Leucocytes__Leucocytes
e 22 23  LacticAcid__CRP
e 21 22  Leucocytes__LacticAcid
e 23 24  CRP__AdmissionNC
e 24 25  AdmissionNC__Leucocytes
e 26 27  CRP__CRP
e 27 28  CRP__Leucocytes
e 28 29  Leucocytes__CRP
e 30 31  ReleaseA__END
e 29 30  CRP__ReleaseA


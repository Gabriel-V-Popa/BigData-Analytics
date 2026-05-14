v 1 START
v 2 CRP
v 3 Leucocytes
v 4 ERRegistration
v 5 ERTriage
v 6 ERSepsisTriage
v 7 AdmissionNC
v 8 CRP
v 9 Leucocytes
v 10 AdmissionIC
v 11 Leucocytes
v 12 CRP
v 13 LacticAcid
v 14 Leucocytes
v 15 Leucocytes
v 16 AdmissionIC
v 17 Leucocytes
v 18 CRP
v 19 LacticAcid
v 20 Leucocytes
v 21 Leucocytes
v 22 Leucocytes
v 23 LacticAcid
v 24 CRP
v 25 Leucocytes
v 26 LacticAcid
v 27 Leucocytes
v 28 CRP
v 29 CRP
v 30 LacticAcid
v 31 Leucocytes
v 32 AdmissionNC
v 33 ReleaseA
v 34 ReturnER
v 35 END
e 4 5  ERRegistration__ERTriage
e 8 9  CRP__Leucocytes
e 13 14  LacticAcid__Leucocytes
e 19 20  LacticAcid__Leucocytes
e 24 25  CRP__Leucocytes
e 26 27  LacticAcid__Leucocytes
e 27 28  Leucocytes__CRP
e 31 32  Leucocytes__AdmissionNC
e 32 33  AdmissionNC__ReleaseA
e 33 34  ReleaseA__ReturnER
e 34 35  ReturnER__END
e 9 10  Leucocytes__AdmissionIC
e 9 13  Leucocytes__LacticAcid
e 25 26  Leucocytes__LacticAcid
e 1 2  START__CRP
e 3 4  Leucocytes__ERRegistration
e 2 3  CRP__Leucocytes
e 5 6  ERTriage__ERSepsisTriage
e 7 8  AdmissionNC__CRP
e 6 7  ERSepsisTriage__AdmissionNC
e 12 14  CRP__Leucocytes
e 10 11  AdmissionIC__Leucocytes
e 11 12  Leucocytes__CRP
e 14 15  Leucocytes__Leucocytes
e 15 16  Leucocytes__AdmissionIC
e 15 19  Leucocytes__LacticAcid
e 18 20  CRP__Leucocytes
e 16 17  AdmissionIC__Leucocytes
e 17 18  Leucocytes__CRP
e 20 21  Leucocytes__Leucocytes
e 23 24  LacticAcid__CRP
e 21 22  Leucocytes__Leucocytes
e 22 23  Leucocytes__LacticAcid
e 28 29  CRP__CRP
e 30 31  LacticAcid__Leucocytes
e 29 30  CRP__LacticAcid


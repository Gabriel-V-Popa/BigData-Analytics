v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 AdmissionNC
v 6 AdmissionIC
v 7 Leucocytes
v 8 CRP
v 9 LacticAcid
v 10 Leucocytes
v 11 LacticAcid
v 12 CRP
v 13 Leucocytes
v 14 CRP
v 15 LacticAcid
v 16 AdmissionNC
v 17 CRP
v 18 Leucocytes
v 19 Leucocytes
v 20 CRP
v 21 CRP
v 22 Leucocytes
v 23 ReleaseA
v 24 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 7 8  Leucocytes__CRP
e 12 13  CRP__Leucocytes
e 16 17  AdmissionNC__CRP
e 17 18  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__AdmissionNC
e 6 7  AdmissionIC__Leucocytes
e 5 6  AdmissionNC__AdmissionIC
e 8 9  CRP__LacticAcid
e 9 10  LacticAcid__Leucocytes
e 10 11  Leucocytes__LacticAcid
e 11 12  LacticAcid__CRP
e 13 14  Leucocytes__CRP
e 15 16  LacticAcid__AdmissionNC
e 14 15  CRP__LacticAcid
e 18 19  Leucocytes__Leucocytes
e 19 20  Leucocytes__CRP
e 20 21  CRP__CRP
e 21 22  CRP__Leucocytes
e 22 23  Leucocytes__ReleaseA
e 23 24  ReleaseA__END


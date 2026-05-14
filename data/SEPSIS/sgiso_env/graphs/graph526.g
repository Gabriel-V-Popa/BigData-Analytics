v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 LacticAcid
v 6 CRP
v 7 Leucocytes
v 8 AdmissionNC
v 9 Leucocytes
v 10 CRP
v 11 AdmissionNC
v 12 Leucocytes
v 13 CRP
v 14 Leucocytes
v 15 CRP
v 16 Leucocytes
v 17 CRP
v 18 Leucocytes
v 19 CRP
v 20 Leucocytes
v 21 CRP
v 22 ReleaseA
v 23 ReturnER
v 24 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  CRP__Leucocytes
e 7 8  Leucocytes__AdmissionNC
e 12 13  Leucocytes__CRP
e 13 14  CRP__Leucocytes
e 14 15  Leucocytes__CRP
e 15 16  CRP__Leucocytes
e 16 17  Leucocytes__CRP
e 17 18  CRP__Leucocytes
e 18 19  Leucocytes__CRP
e 19 20  CRP__Leucocytes
e 22 23  ReleaseA__ReturnER
e 23 24  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 5 6  LacticAcid__CRP
e 4 5  ERSepsisTriage__LacticAcid
e 8 9  AdmissionNC__Leucocytes
e 9 10  Leucocytes__CRP
e 10 11  CRP__AdmissionNC
e 11 12  AdmissionNC__Leucocytes
e 20 21  Leucocytes__CRP
e 21 22  CRP__ReleaseA


v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 Leucocytes
v 5 LacticAcid
v 6 CRP
v 7 ERSepsisTriage
v 8 AdmissionNC
v 9 CRP
v 10 Leucocytes
v 11 CRP
v 12 Leucocytes
v 13 CRP
v 14 Leucocytes
v 15 CRP
v 16 Leucocytes
v 17 ReleaseA
v 18 ReturnER
v 19 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  CRP__ERSepsisTriage
e 8 9  AdmissionNC__CRP
e 9 10  CRP__Leucocytes
e 10 11  Leucocytes__CRP
e 11 12  CRP__Leucocytes
e 12 13  Leucocytes__CRP
e 13 14  CRP__Leucocytes
e 14 15  Leucocytes__CRP
e 15 16  CRP__Leucocytes
e 16 17  Leucocytes__ReleaseA
e 17 18  ReleaseA__ReturnER
e 18 19  ReturnER__END
e 7 8  ERSepsisTriage__AdmissionNC
e 3 4  ERTriage__Leucocytes
e 5 6  LacticAcid__CRP
e 4 5  Leucocytes__LacticAcid


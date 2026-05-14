v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 AdmissionNC
v 8 Leucocytes
v 9 CRP
v 10 Leucocytes
v 11 Leucocytes
v 12 Leucocytes
v 13 Leucocytes
v 14 Leucocytes
v 15 LacticAcid
v 16 CRP
v 17 Leucocytes
v 18 ReleaseA
v 19 ReturnER
v 20 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 5 6  Leucocytes__CRP
e 8 9  Leucocytes__CRP
e 9 10  CRP__Leucocytes
e 16 17  CRP__Leucocytes
e 17 18  Leucocytes__ReleaseA
e 18 19  ReleaseA__ReturnER
e 19 20  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 6 7  CRP__AdmissionNC
e 7 8  AdmissionNC__Leucocytes
e 10 11  Leucocytes__Leucocytes
e 15 16  LacticAcid__CRP
e 11 12  Leucocytes__Leucocytes
e 12 13  Leucocytes__Leucocytes
e 13 14  Leucocytes__Leucocytes
e 14 15  Leucocytes__LacticAcid


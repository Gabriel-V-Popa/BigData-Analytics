v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 Leucocytes
v 7 AdmissionNC
v 8 CRP
v 9 Leucocytes
v 10 AdmissionNC
v 11 Leucocytes
v 12 CRP
v 13 CRP
v 14 ReleaseA
v 15 ReturnER
v 16 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 6 7  Leucocytes__AdmissionNC
e 7 8  AdmissionNC__CRP
e 8 9  CRP__Leucocytes
e 9 10  Leucocytes__AdmissionNC
e 14 15  ReleaseA__ReturnER
e 15 16  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 10 11  AdmissionNC__Leucocytes
e 13 14  CRP__ReleaseA
e 11 12  Leucocytes__CRP
e 12 13  CRP__CRP


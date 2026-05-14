v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 Leucocytes
v 7 AdmissionNC
v 8 Leucocytes
v 9 CRP
v 10 CRP
v 11 Leucocytes
v 12 ReleaseA
v 13 ReturnER
v 14 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 6 7  Leucocytes__AdmissionNC
e 11 12  Leucocytes__ReleaseA
e 12 13  ReleaseA__ReturnER
e 13 14  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 7 8  AdmissionNC__Leucocytes
e 8 9  Leucocytes__CRP
e 9 10  CRP__CRP
e 10 11  CRP__Leucocytes


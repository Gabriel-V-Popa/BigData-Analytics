v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 CRP
v 5 Leucocytes
v 6 ERSepsisTriage
v 7 AdmissionNC
v 8 CRP
v 9 Leucocytes
v 10 CRP
v 11 ReleaseA
v 12 ReturnER
v 13 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__CRP
e 4 5  CRP__Leucocytes
e 7 8  AdmissionNC__CRP
e 8 9  CRP__Leucocytes
e 11 12  ReleaseA__ReturnER
e 12 13  ReturnER__END
e 5 6  Leucocytes__ERSepsisTriage
e 6 7  ERSepsisTriage__AdmissionNC
e 9 10  Leucocytes__CRP
e 10 11  CRP__ReleaseA


v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 AdmissionNC
v 8 AdmissionNC
v 9 CRP
v 10 Leucocytes
v 11 CRP
v 12 Leucocytes
v 13 CRP
v 14 ReleaseA
v 15 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 9 10  CRP__Leucocytes
e 10 11  Leucocytes__CRP
e 11 12  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__CRP
e 6 7  CRP__AdmissionNC
e 7 8  AdmissionNC__AdmissionNC
e 8 9  AdmissionNC__CRP
e 12 13  Leucocytes__CRP
e 14 15  ReleaseA__END
e 13 14  CRP__ReleaseA


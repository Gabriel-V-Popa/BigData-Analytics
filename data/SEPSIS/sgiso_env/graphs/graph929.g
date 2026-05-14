v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 AdmissionNC
v 8 AdmissionNC
v 9 Leucocytes
v 10 CRP
v 11 CRP
v 12 Leucocytes
v 13 Leucocytes
v 14 Leucocytes
v 15 CRP
v 16 ReleaseA
v 17 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 5 6  Leucocytes__CRP
e 9 10  Leucocytes__CRP
e 3 4  ERTriage__ERSepsisTriage
e 6 7  CRP__AdmissionNC
e 8 9  AdmissionNC__Leucocytes
e 7 8  AdmissionNC__AdmissionNC
e 10 11  CRP__CRP
e 11 12  CRP__Leucocytes
e 12 13  Leucocytes__Leucocytes
e 16 17  ReleaseA__END
e 13 14  Leucocytes__Leucocytes
e 14 15  Leucocytes__CRP
e 15 16  CRP__ReleaseA


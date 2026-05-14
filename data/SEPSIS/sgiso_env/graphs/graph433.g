v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 Leucocytes
v 5 CRP
v 6 ERSepsisTriage
v 7 AdmissionNC
v 8 Leucocytes
v 9 CRP
v 10 Leucocytes
v 11 Leucocytes
v 12 CRP
v 13 CRP
v 14 Leucocytes
v 15 ReleaseA
v 16 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__ERSepsisTriage
e 8 9  Leucocytes__CRP
e 9 10  CRP__Leucocytes
e 3 4  ERTriage__Leucocytes
e 4 5  Leucocytes__CRP
e 6 7  ERSepsisTriage__AdmissionNC
e 7 8  AdmissionNC__Leucocytes
e 10 11  Leucocytes__Leucocytes
e 11 12  Leucocytes__CRP
e 12 13  CRP__CRP
e 13 14  CRP__Leucocytes
e 14 15  Leucocytes__ReleaseA
e 15 16  ReleaseA__END


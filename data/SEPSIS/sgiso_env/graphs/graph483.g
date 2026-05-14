v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 Leucocytes
v 5 CRP
v 6 AdmissionNC
v 7 ERSepsisTriage
v 8 AdmissionNC
v 9 Leucocytes
v 10 CRP
v 11 Leucocytes
v 12 CRP
v 13 Leucocytes
v 14 CRP
v 15 ReleaseC
v 16 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 9 10  Leucocytes__CRP
e 10 11  CRP__Leucocytes
e 11 12  Leucocytes__CRP
e 12 13  CRP__Leucocytes
e 3 4  ERTriage__Leucocytes
e 4 5  Leucocytes__CRP
e 5 6  CRP__AdmissionNC
e 6 7  AdmissionNC__ERSepsisTriage
e 7 8  ERSepsisTriage__AdmissionNC
e 8 9  AdmissionNC__Leucocytes
e 13 14  Leucocytes__CRP
e 15 16  ReleaseC__END
e 14 15  CRP__ReleaseC


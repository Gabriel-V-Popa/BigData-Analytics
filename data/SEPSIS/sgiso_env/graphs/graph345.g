v 1 START
v 2 Leucocytes
v 3 CRP
v 4 ERRegistration
v 5 ERTriage
v 6 ERSepsisTriage
v 7 AdmissionNC
v 8 CRP
v 9 Leucocytes
v 10 AdmissionNC
v 11 CRP
v 12 Leucocytes
v 13 CRP
v 14 Leucocytes
v 15 CRP
v 16 ReleaseC
v 17 END
e 4 5  ERRegistration__ERTriage
e 8 9  CRP__Leucocytes
e 9 10  Leucocytes__AdmissionNC
e 10 11  AdmissionNC__CRP
e 11 12  CRP__Leucocytes
e 12 13  Leucocytes__CRP
e 13 14  CRP__Leucocytes
e 1 2  START__Leucocytes
e 3 4  CRP__ERRegistration
e 2 3  Leucocytes__CRP
e 5 6  ERTriage__ERSepsisTriage
e 7 8  AdmissionNC__CRP
e 6 7  ERSepsisTriage__AdmissionNC
e 14 15  Leucocytes__CRP
e 16 17  ReleaseC__END
e 15 16  CRP__ReleaseC


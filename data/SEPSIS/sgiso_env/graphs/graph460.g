v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 AdmissionIC
v 8 Leucocytes
v 9 Leucocytes
v 10 Leucocytes
v 11 CRP
v 12 CRP
v 13 ReleaseB
v 14 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 5 6  Leucocytes__CRP
e 3 4  ERTriage__ERSepsisTriage
e 6 7  CRP__AdmissionIC
e 7 8  AdmissionIC__Leucocytes
e 8 9  Leucocytes__Leucocytes
e 13 14  ReleaseB__END
e 9 10  Leucocytes__Leucocytes
e 10 11  Leucocytes__CRP
e 11 12  CRP__CRP
e 12 13  CRP__ReleaseB


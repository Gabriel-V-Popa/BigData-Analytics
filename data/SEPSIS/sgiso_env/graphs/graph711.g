v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 AdmissionNC
v 8 Leucocytes
v 9 AdmissionNC
v 10 Leucocytes
v 11 Leucocytes
v 12 Leucocytes
v 13 Leucocytes
v 14 Leucocytes
v 15 Leucocytes
v 16 Leucocytes
v 17 Leucocytes
v 18 CRP
v 19 Leucocytes
v 20 Leucocytes
v 21 Leucocytes
v 22 Leucocytes
v 23 Leucocytes
v 24 ReleaseE
v 25 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 5 6  Leucocytes__CRP
e 8 9  Leucocytes__AdmissionNC
e 18 19  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 6 7  CRP__AdmissionNC
e 7 8  AdmissionNC__Leucocytes
e 9 10  AdmissionNC__Leucocytes
e 17 18  Leucocytes__CRP
e 10 11  Leucocytes__Leucocytes
e 11 12  Leucocytes__Leucocytes
e 12 13  Leucocytes__Leucocytes
e 13 14  Leucocytes__Leucocytes
e 14 15  Leucocytes__Leucocytes
e 15 16  Leucocytes__Leucocytes
e 16 17  Leucocytes__Leucocytes
e 19 20  Leucocytes__Leucocytes
e 24 25  ReleaseE__END
e 20 21  Leucocytes__Leucocytes
e 21 22  Leucocytes__Leucocytes
e 22 23  Leucocytes__Leucocytes
e 23 24  Leucocytes__ReleaseE


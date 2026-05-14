v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 AdmissionNC
v 7 Leucocytes
v 8 Leucocytes
v 9 Leucocytes
v 10 CRP
v 11 Leucocytes
v 12 Leucocytes
v 13 Leucocytes
v 14 Leucocytes
v 15 Leucocytes
v 16 Leucocytes
v 17 CRP
v 18 Leucocytes
v 19 ReleaseA
v 20 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 5 6  Leucocytes__AdmissionNC
e 10 11  CRP__Leucocytes
e 17 18  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 6 7  AdmissionNC__Leucocytes
e 9 10  Leucocytes__CRP
e 7 8  Leucocytes__Leucocytes
e 8 9  Leucocytes__Leucocytes
e 11 12  Leucocytes__Leucocytes
e 16 17  Leucocytes__CRP
e 12 13  Leucocytes__Leucocytes
e 13 14  Leucocytes__Leucocytes
e 14 15  Leucocytes__Leucocytes
e 15 16  Leucocytes__Leucocytes
e 18 19  Leucocytes__ReleaseA
e 19 20  ReleaseA__END


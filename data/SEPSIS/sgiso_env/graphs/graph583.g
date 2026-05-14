v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 AdmissionNC
v 8 Leucocytes
v 9 CRP
v 10 Leucocytes
v 11 CRP
v 12 CRP
v 13 Leucocytes
v 14 CRP
v 15 Leucocytes
v 16 Leucocytes
v 17 CRP
v 18 CRP
v 19 Leucocytes
v 20 ReleaseD
v 21 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 5 6  Leucocytes__CRP
e 8 9  Leucocytes__CRP
e 9 10  CRP__Leucocytes
e 10 11  Leucocytes__CRP
e 13 14  Leucocytes__CRP
e 14 15  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 6 7  CRP__AdmissionNC
e 7 8  AdmissionNC__Leucocytes
e 11 12  CRP__CRP
e 12 13  CRP__Leucocytes
e 15 16  Leucocytes__Leucocytes
e 16 17  Leucocytes__CRP
e 17 18  CRP__CRP
e 18 19  CRP__Leucocytes
e 19 20  Leucocytes__ReleaseD
e 20 21  ReleaseD__END


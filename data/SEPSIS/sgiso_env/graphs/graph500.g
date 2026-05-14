v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 AdmissionNC
v 8 CRP
v 9 Leucocytes
v 10 AdmissionNC
v 11 CRP
v 12 Leucocytes
v 13 Leucocytes
v 14 CRP
v 15 CRP
v 16 Leucocytes
v 17 ReleaseB
v 18 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 7 8  AdmissionNC__CRP
e 8 9  CRP__Leucocytes
e 9 10  Leucocytes__AdmissionNC
e 10 11  AdmissionNC__CRP
e 11 12  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__CRP
e 6 7  CRP__AdmissionNC
e 12 13  Leucocytes__Leucocytes
e 13 14  Leucocytes__CRP
e 14 15  CRP__CRP
e 15 16  CRP__Leucocytes
e 16 17  Leucocytes__ReleaseB
e 17 18  ReleaseB__END


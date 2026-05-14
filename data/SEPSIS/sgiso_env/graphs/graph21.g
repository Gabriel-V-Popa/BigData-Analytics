v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 AdmissionNC
v 7 Leucocytes
v 8 Leucocytes
v 9 Leucocytes
v 10 Leucocytes
v 11 CRP
v 12 ReleaseB
v 13 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 5 6  Leucocytes__AdmissionNC
e 5 12  Leucocytes__ReleaseB
e 12 13  ReleaseB__END
e 3 4  ERTriage__ERSepsisTriage
e 11 13  CRP__END
e 6 7  AdmissionNC__Leucocytes
e 7 8  Leucocytes__Leucocytes
e 8 9  Leucocytes__Leucocytes
e 9 10  Leucocytes__Leucocytes
e 10 11  Leucocytes__CRP


v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 Leucocytes
v 7 AdmissionNC
v 8 Leucocytes
v 9 Leucocytes
v 10 AdmissionNC
v 11 ReleaseA
v 12 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 6 7  Leucocytes__AdmissionNC
e 7 8  AdmissionNC__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 8 9  Leucocytes__Leucocytes
e 9 10  Leucocytes__AdmissionNC
e 10 11  AdmissionNC__ReleaseA
e 11 12  ReleaseA__END


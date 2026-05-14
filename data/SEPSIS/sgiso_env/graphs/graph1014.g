v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 AdmissionNC
v 8 Leucocytes
v 9 CRP
v 10 ReleaseA
v 11 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 5 6  Leucocytes__CRP
e 3 4  ERTriage__ERSepsisTriage
e 6 7  CRP__AdmissionNC
e 7 8  AdmissionNC__Leucocytes
e 8 9  Leucocytes__CRP
e 10 11  ReleaseA__END
e 9 10  CRP__ReleaseA


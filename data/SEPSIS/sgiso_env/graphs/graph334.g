v 1 START
v 2 CRP
v 3 Leucocytes
v 4 ERRegistration
v 5 ERTriage
v 6 ERSepsisTriage
v 7 AdmissionNC
v 8 CRP
v 9 CRP
v 10 ReleaseA
v 11 END
e 4 5  ERRegistration__ERTriage
e 1 2  START__CRP
e 3 4  Leucocytes__ERRegistration
e 2 3  CRP__Leucocytes
e 5 6  ERTriage__ERSepsisTriage
e 7 8  AdmissionNC__CRP
e 6 7  ERSepsisTriage__AdmissionNC
e 8 9  CRP__CRP
e 10 11  ReleaseA__END
e 9 10  CRP__ReleaseA


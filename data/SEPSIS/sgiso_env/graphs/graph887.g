v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 Leucocytes
v 7 AdmissionNC
v 8 CRP
v 9 ReleaseD
v 10 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 6 7  Leucocytes__AdmissionNC
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 7 8  AdmissionNC__CRP
e 9 10  ReleaseD__END
e 8 9  CRP__ReleaseD


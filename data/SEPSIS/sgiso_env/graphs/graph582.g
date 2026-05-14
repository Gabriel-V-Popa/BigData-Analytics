v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 Leucocytes
v 5 CRP
v 6 ERSepsisTriage
v 7 AdmissionNC
v 8 ReleaseA
v 9 ReturnER
v 10 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__ERSepsisTriage
e 7 8  AdmissionNC__ReleaseA
e 8 9  ReleaseA__ReturnER
e 9 10  ReturnER__END
e 6 7  ERSepsisTriage__AdmissionNC
e 3 4  ERTriage__Leucocytes
e 4 5  Leucocytes__CRP


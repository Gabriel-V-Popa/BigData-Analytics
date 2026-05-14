v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 AdmissionNC
v 7 ReleaseA
v 8 ReturnER
v 9 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 5 6  Leucocytes__AdmissionNC
e 6 7  AdmissionNC__ReleaseA
e 7 8  ReleaseA__ReturnER
e 8 9  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage


v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 AdmissionNC
v 7 AdmissionNC
v 8 ReleaseA
v 9 ReturnER
v 10 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 8 9  ReleaseA__ReturnER
e 9 10  ReturnER__END
e 5 6  CRP__AdmissionNC
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 6 7  AdmissionNC__AdmissionNC
e 7 8  AdmissionNC__ReleaseA


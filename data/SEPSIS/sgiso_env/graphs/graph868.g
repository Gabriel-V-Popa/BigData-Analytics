v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 AdmissionNC
v 8 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 7 8  AdmissionNC__END
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__CRP
e 6 7  CRP__AdmissionNC


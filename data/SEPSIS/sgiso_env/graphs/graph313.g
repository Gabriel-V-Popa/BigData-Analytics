v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 IVAntibiotics
v 8 AdmissionNC
v 9 AdmissionNC
v 10 AdmissionNC
v 11 CRP
v 12 ReleaseA
v 13 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__CRP
e 7 8  IVAntibiotics__AdmissionNC
e 6 7  CRP__IVAntibiotics
e 8 9  AdmissionNC__AdmissionNC
e 12 13  ReleaseA__END
e 9 10  AdmissionNC__AdmissionNC
e 10 11  AdmissionNC__CRP
e 11 12  CRP__ReleaseA


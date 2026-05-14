v 1 START
v 2 Leucocytes
v 3 CRP
v 4 ERRegistration
v 5 ERTriage
v 6 ERSepsisTriage
v 7 IVAntibiotics
v 8 AdmissionNC
v 9 ReleaseA
v 10 END
e 4 5  ERRegistration__ERTriage
e 5 6  ERTriage__ERSepsisTriage
e 1 2  START__Leucocytes
e 3 4  CRP__ERRegistration
e 2 3  Leucocytes__CRP
e 6 7  ERSepsisTriage__IVAntibiotics
e 7 8  IVAntibiotics__AdmissionNC
e 8 9  AdmissionNC__ReleaseA
e 9 10  ReleaseA__END


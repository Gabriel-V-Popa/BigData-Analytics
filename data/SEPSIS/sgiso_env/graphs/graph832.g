v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 IVAntibiotics
v 8 AdmissionNC
v 9 CRP
v 10 CRP
v 11 CRP
v 12 CRP
v 13 ReleaseA
v 14 ReturnER
v 15 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 13 14  ReleaseA__ReturnER
e 14 15  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__CRP
e 7 8  IVAntibiotics__AdmissionNC
e 6 7  CRP__IVAntibiotics
e 8 9  AdmissionNC__CRP
e 12 13  CRP__ReleaseA
e 9 10  CRP__CRP
e 10 11  CRP__CRP
e 11 12  CRP__CRP


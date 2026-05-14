v 1 START
v 2 Leucocytes
v 3 CRP
v 4 ERRegistration
v 5 ERTriage
v 6 ERSepsisTriage
v 7 IVAntibiotics
v 8 AdmissionNC
v 9 Leucocytes
v 10 CRP
v 11 Leucocytes
v 12 CRP
v 13 CRP
v 14 CRP
v 15 Leucocytes
v 16 CRP
v 17 ReleaseA
v 18 END
e 4 5  ERRegistration__ERTriage
e 9 10  Leucocytes__CRP
e 10 11  CRP__Leucocytes
e 11 12  Leucocytes__CRP
e 5 6  ERTriage__ERSepsisTriage
e 1 2  START__Leucocytes
e 3 4  CRP__ERRegistration
e 2 3  Leucocytes__CRP
e 6 7  ERSepsisTriage__IVAntibiotics
e 8 9  AdmissionNC__Leucocytes
e 7 8  IVAntibiotics__AdmissionNC
e 12 13  CRP__CRP
e 14 15  CRP__Leucocytes
e 13 14  CRP__CRP
e 15 16  Leucocytes__CRP
e 17 18  ReleaseA__END
e 16 17  CRP__ReleaseA


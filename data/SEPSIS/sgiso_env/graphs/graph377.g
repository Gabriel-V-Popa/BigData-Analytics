v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVAntibiotics
v 6 CRP
v 7 Leucocytes
v 8 AdmissionNC
v 9 Leucocytes
v 10 CRP
v 11 IVLiquid
v 12 CRP
v 13 Leucocytes
v 14 ReleaseA
v 15 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  CRP__Leucocytes
e 7 8  Leucocytes__AdmissionNC
e 11 12  IVLiquid__CRP
e 12 13  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 5 6  IVAntibiotics__CRP
e 4 5  ERSepsisTriage__IVAntibiotics
e 8 9  AdmissionNC__Leucocytes
e 10 11  CRP__IVLiquid
e 9 10  Leucocytes__CRP
e 13 14  Leucocytes__ReleaseA
e 14 15  ReleaseA__END


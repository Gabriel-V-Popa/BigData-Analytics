v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 Leucocytes
v 7 CRP
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 CRP
v 11 Leucocytes
v 12 ReleaseA
v 13 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 9 10  AdmissionNC__CRP
e 10 11  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__Leucocytes
e 6 7  Leucocytes__CRP
e 8 9  IVAntibiotics__AdmissionNC
e 7 8  CRP__IVAntibiotics
e 11 12  Leucocytes__ReleaseA
e 12 13  ReleaseA__END


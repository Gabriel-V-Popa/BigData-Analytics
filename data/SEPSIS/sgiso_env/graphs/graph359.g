v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 IVLiquid
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 CRP
v 11 Leucocytes
v 12 CRP
v 13 Leucocytes
v 14 CRP
v 15 Leucocytes
v 16 ReleaseA
v 17 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 10 11  CRP__Leucocytes
e 11 12  Leucocytes__CRP
e 12 13  CRP__Leucocytes
e 13 14  Leucocytes__CRP
e 14 15  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__CRP
e 6 7  CRP__IVLiquid
e 7 8  IVLiquid__IVAntibiotics
e 9 10  AdmissionNC__CRP
e 8 9  IVAntibiotics__AdmissionNC
e 15 16  Leucocytes__ReleaseA
e 16 17  ReleaseA__END


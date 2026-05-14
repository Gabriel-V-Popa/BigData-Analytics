v 1 START
v 2 ERRegistration
v 3 ERSepsisTriage
v 4 ERTriage
v 5 IVAntibiotics
v 6 Leucocytes
v 7 CRP
v 8 IVLiquid
v 9 AdmissionNC
v 10 CRP
v 11 Leucocytes
v 12 CRP
v 13 Leucocytes
v 14 CRP
v 15 CRP
v 16 Leucocytes
v 17 ReleaseA
v 18 END
e 1 2  START__ERRegistration
e 10 11  CRP__Leucocytes
e 11 12  Leucocytes__CRP
e 12 13  CRP__Leucocytes
e 13 14  Leucocytes__CRP
e 2 3  ERRegistration__ERSepsisTriage
e 3 4  ERSepsisTriage__ERTriage
e 5 6  IVAntibiotics__Leucocytes
e 4 5  ERTriage__IVAntibiotics
e 6 7  Leucocytes__CRP
e 7 8  CRP__IVLiquid
e 8 9  IVLiquid__AdmissionNC
e 9 10  AdmissionNC__CRP
e 14 15  CRP__CRP
e 15 16  CRP__Leucocytes
e 16 17  Leucocytes__ReleaseA
e 17 18  ReleaseA__END


v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 Leucocytes
v 7 IVLiquid
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 AdmissionNC
v 11 CRP
v 12 CRP
v 13 ReleaseA
v 14 ReturnER
v 15 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 13 14  ReleaseA__ReturnER
e 14 15  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 6 7  Leucocytes__IVLiquid
e 8 9  IVAntibiotics__AdmissionNC
e 7 8  IVLiquid__IVAntibiotics
e 9 10  AdmissionNC__AdmissionNC
e 12 13  CRP__ReleaseA
e 10 11  AdmissionNC__CRP
e 11 12  CRP__CRP


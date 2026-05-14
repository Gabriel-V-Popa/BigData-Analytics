v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 IVLiquid
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 Leucocytes
v 11 Leucocytes
v 12 Leucocytes
v 13 Leucocytes
v 14 Leucocytes
v 15 ReleaseA
v 16 ReturnER
v 17 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 5 6  Leucocytes__CRP
e 15 16  ReleaseA__ReturnER
e 16 17  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 6 7  CRP__IVLiquid
e 9 10  AdmissionNC__Leucocytes
e 7 8  IVLiquid__IVAntibiotics
e 8 9  IVAntibiotics__AdmissionNC
e 10 11  Leucocytes__Leucocytes
e 14 15  Leucocytes__ReleaseA
e 11 12  Leucocytes__Leucocytes
e 12 13  Leucocytes__Leucocytes
e 13 14  Leucocytes__Leucocytes


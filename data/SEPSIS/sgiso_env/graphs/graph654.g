v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 IVAntibiotics
v 8 IVLiquid
v 9 AdmissionNC
v 10 Leucocytes
v 11 Leucocytes
v 12 Leucocytes
v 13 ReleaseB
v 14 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 13 14  ReleaseB__END
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__CRP
e 8 9  IVLiquid__AdmissionNC
e 8 13  IVLiquid__ReleaseB
e 6 7  CRP__IVAntibiotics
e 7 8  IVAntibiotics__IVLiquid
e 12 14  Leucocytes__END
e 9 10  AdmissionNC__Leucocytes
e 10 11  Leucocytes__Leucocytes
e 11 12  Leucocytes__Leucocytes


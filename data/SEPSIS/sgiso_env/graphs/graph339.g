v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 Leucocytes
v 5 CRP
v 6 ERSepsisTriage
v 7 IVLiquid
v 8 IVAntibiotics
v 9 ReleaseB
v 10 AdmissionNC
v 11 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__ERSepsisTriage
e 9 11  ReleaseB__END
e 10 11  AdmissionNC__END
e 3 4  ERTriage__Leucocytes
e 4 5  Leucocytes__CRP
e 6 7  ERSepsisTriage__IVLiquid
e 8 9  IVAntibiotics__ReleaseB
e 8 10  IVAntibiotics__AdmissionNC
e 7 8  IVLiquid__IVAntibiotics


v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 IVLiquid
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 AdmissionNC
v 11 ReleaseB
v 12 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 11 12  ReleaseB__END
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__CRP
e 8 9  IVAntibiotics__AdmissionNC
e 8 11  IVAntibiotics__ReleaseB
e 6 7  CRP__IVLiquid
e 7 8  IVLiquid__IVAntibiotics
e 10 12  AdmissionNC__END
e 9 10  AdmissionNC__AdmissionNC


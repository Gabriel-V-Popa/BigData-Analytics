v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 LacticAcid
v 8 IVAntibiotics
v 9 IVLiquid
v 10 AdmissionNC
v 11 AdmissionNC
v 12 ReleaseB
v 13 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 12 13  ReleaseB__END
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__CRP
e 9 10  IVLiquid__AdmissionNC
e 9 12  IVLiquid__ReleaseB
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__IVAntibiotics
e 8 9  IVAntibiotics__IVLiquid
e 11 13  AdmissionNC__END
e 10 11  AdmissionNC__AdmissionNC


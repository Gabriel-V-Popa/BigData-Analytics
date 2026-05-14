v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 IVAntibiotics
v 7 CRP
v 8 LacticAcid
v 9 Leucocytes
v 10 AdmissionNC
v 11 ReleaseB
v 12 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 9 10  Leucocytes__AdmissionNC
e 9 11  Leucocytes__ReleaseB
e 10 12  AdmissionNC__END
e 11 12  ReleaseB__END
e 3 4  ERTriage__ERSepsisTriage
e 6 7  IVAntibiotics__CRP
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__IVAntibiotics
e 7 8  CRP__LacticAcid
e 8 9  LacticAcid__Leucocytes


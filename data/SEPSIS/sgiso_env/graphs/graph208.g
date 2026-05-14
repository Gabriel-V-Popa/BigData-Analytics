v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 LacticAcid
v 7 Leucocytes
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 IVLiquid
v 11 ReleaseB
v 12 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 11 12  ReleaseB__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 5 6  CRP__LacticAcid
e 6 7  LacticAcid__Leucocytes
e 7 8  Leucocytes__IVAntibiotics
e 8 9  IVAntibiotics__AdmissionNC
e 8 11  IVAntibiotics__ReleaseB
e 10 12  IVLiquid__END
e 9 10  AdmissionNC__IVLiquid


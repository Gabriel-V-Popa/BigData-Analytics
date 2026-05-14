v 1 START
v 2 ERRegistration
v 3 IVLiquid
v 4 ERTriage
v 5 ERSepsisTriage
v 6 IVAntibiotics
v 7 LacticAcid
v 8 Leucocytes
v 9 CRP
v 10 AdmissionNC
v 11 ReleaseB
v 12 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__IVLiquid
e 6 7  IVAntibiotics__LacticAcid
e 7 8  LacticAcid__Leucocytes
e 10 12  AdmissionNC__END
e 11 12  ReleaseB__END
e 5 6  ERSepsisTriage__IVAntibiotics
e 3 4  IVLiquid__ERTriage
e 4 5  ERTriage__ERSepsisTriage
e 8 9  Leucocytes__CRP
e 9 10  CRP__AdmissionNC
e 9 11  CRP__ReleaseB


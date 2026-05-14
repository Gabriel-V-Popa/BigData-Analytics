v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 LacticAcid
v 7 CRP
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 LacticAcid
v 12 ReleaseB
v 13 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 12 13  ReleaseB__END
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__LacticAcid
e 9 10  IVAntibiotics__AdmissionNC
e 9 12  IVAntibiotics__ReleaseB
e 6 7  LacticAcid__CRP
e 7 8  CRP__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 11 13  LacticAcid__END
e 10 11  AdmissionNC__LacticAcid


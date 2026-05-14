v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 IVAntibiotics
v 7 CRP
v 8 Leucocytes
v 9 LacticAcid
v 10 AdmissionIC
v 11 LacticAcid
v 12 ReleaseB
v 13 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 7 8  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 6 7  IVAntibiotics__CRP
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__IVAntibiotics
e 8 9  Leucocytes__LacticAcid
e 12 13  ReleaseB__END
e 9 10  LacticAcid__AdmissionIC
e 10 11  AdmissionIC__LacticAcid
e 11 12  LacticAcid__ReleaseB


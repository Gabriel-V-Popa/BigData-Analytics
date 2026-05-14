v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 Leucocytes
v 7 LacticAcid
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 IVLiquid
v 11 Leucocytes
v 12 CRP
v 13 ReleaseC
v 14 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 9 10  AdmissionNC__IVLiquid
e 10 11  IVLiquid__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 6 7  Leucocytes__LacticAcid
e 8 9  IVAntibiotics__AdmissionNC
e 7 8  LacticAcid__IVAntibiotics
e 11 12  Leucocytes__CRP
e 13 14  ReleaseC__END
e 12 13  CRP__ReleaseC


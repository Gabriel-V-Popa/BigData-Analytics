v 1 START
v 2 CRP
v 3 Leucocytes
v 4 ERRegistration
v 5 ERTriage
v 6 ERSepsisTriage
v 7 LacticAcid
v 8 CRP
v 9 Leucocytes
v 10 IVLiquid
v 11 IVAntibiotics
v 12 AdmissionNC
v 13 ReleaseB
v 14 END
e 4 5  ERRegistration__ERTriage
e 8 9  CRP__Leucocytes
e 12 14  AdmissionNC__END
e 13 14  ReleaseB__END
e 1 2  START__CRP
e 3 4  Leucocytes__ERRegistration
e 2 3  CRP__Leucocytes
e 5 6  ERTriage__ERSepsisTriage
e 7 8  LacticAcid__CRP
e 6 7  ERSepsisTriage__LacticAcid
e 9 10  Leucocytes__IVLiquid
e 11 12  IVAntibiotics__AdmissionNC
e 11 13  IVAntibiotics__ReleaseB
e 10 11  IVLiquid__IVAntibiotics


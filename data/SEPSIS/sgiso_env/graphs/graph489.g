v 1 START
v 2 ERTriage
v 3 ERRegistration
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 IVAntibiotics
v 7 Leucocytes
v 8 CRP
v 9 LacticAcid
v 10 AdmissionNC
v 11 AdmissionNC
v 12 CRP
v 13 Leucocytes
v 14 CRP
v 15 Leucocytes
v 16 ReleaseC
v 17 ReturnER
v 18 END
e 12 13  CRP__Leucocytes
e 13 14  Leucocytes__CRP
e 14 15  CRP__Leucocytes
e 15 16  Leucocytes__ReleaseC
e 16 17  ReleaseC__ReturnER
e 17 18  ReturnER__END
e 3 4  ERRegistration__ERSepsisTriage
e 1 2  START__ERTriage
e 2 3  ERTriage__ERRegistration
e 4 5  ERSepsisTriage__IVLiquid
e 6 7  IVAntibiotics__Leucocytes
e 5 6  IVLiquid__IVAntibiotics
e 7 8  Leucocytes__CRP
e 9 10  LacticAcid__AdmissionNC
e 8 9  CRP__LacticAcid
e 10 11  AdmissionNC__AdmissionNC
e 11 12  AdmissionNC__CRP


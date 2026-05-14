v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 IVLiquid
v 5 Leucocytes
v 6 CRP
v 7 LacticAcid
v 8 ERSepsisTriage
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 Leucocytes
v 12 CRP
v 13 AdmissionNC
v 14 CRP
v 15 Leucocytes
v 16 ReleaseA
v 17 ReturnER
v 18 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 13 14  AdmissionNC__CRP
e 14 15  CRP__Leucocytes
e 15 16  Leucocytes__ReleaseA
e 16 17  ReleaseA__ReturnER
e 17 18  ReturnER__END
e 3 4  ERTriage__IVLiquid
e 5 6  Leucocytes__CRP
e 4 5  IVLiquid__Leucocytes
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__ERSepsisTriage
e 8 9  ERSepsisTriage__IVAntibiotics
e 10 11  AdmissionNC__Leucocytes
e 9 10  IVAntibiotics__AdmissionNC
e 11 12  Leucocytes__CRP
e 12 13  CRP__AdmissionNC


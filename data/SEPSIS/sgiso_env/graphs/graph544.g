v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 LacticAcid
v 5 CRP
v 6 Leucocytes
v 7 IVLiquid
v 8 ERSepsisTriage
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 AdmissionNC
v 12 CRP
v 13 Leucocytes
v 14 CRP
v 15 Leucocytes
v 16 CRP
v 17 ReleaseA
v 18 ReturnER
v 19 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 6 7  Leucocytes__IVLiquid
e 12 13  CRP__Leucocytes
e 13 14  Leucocytes__CRP
e 14 15  CRP__Leucocytes
e 17 18  ReleaseA__ReturnER
e 18 19  ReturnER__END
e 3 4  ERTriage__LacticAcid
e 4 5  LacticAcid__CRP
e 7 8  IVLiquid__ERSepsisTriage
e 11 12  AdmissionNC__CRP
e 8 9  ERSepsisTriage__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__AdmissionNC
e 15 16  Leucocytes__CRP
e 16 17  CRP__ReleaseA


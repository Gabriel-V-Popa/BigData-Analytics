v 1 START
v 2 IVLiquid
v 3 ERRegistration
v 4 ERTriage
v 5 ERSepsisTriage
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
v 16 CRP
v 17 ReleaseA
v 18 ReturnER
v 19 END
e 3 4  ERRegistration__ERTriage
e 12 13  CRP__Leucocytes
e 13 14  Leucocytes__CRP
e 14 15  CRP__Leucocytes
e 17 18  ReleaseA__ReturnER
e 18 19  ReturnER__END
e 4 5  ERTriage__ERSepsisTriage
e 1 2  START__IVLiquid
e 2 3  IVLiquid__ERRegistration
e 5 6  ERSepsisTriage__IVAntibiotics
e 6 7  IVAntibiotics__Leucocytes
e 7 8  Leucocytes__CRP
e 9 10  LacticAcid__AdmissionNC
e 8 9  CRP__LacticAcid
e 10 11  AdmissionNC__AdmissionNC
e 11 12  AdmissionNC__CRP
e 15 16  Leucocytes__CRP
e 16 17  CRP__ReleaseA


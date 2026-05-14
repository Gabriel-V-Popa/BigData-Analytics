v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 LacticAcid
v 5 Leucocytes
v 6 CRP
v 7 ERSepsisTriage
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 AdmissionNC
v 12 CRP
v 13 Leucocytes
v 14 Leucocytes
v 15 CRP
v 16 CRP
v 17 ReleaseA
v 18 ReturnER
v 19 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  CRP__ERSepsisTriage
e 12 13  CRP__Leucocytes
e 17 18  ReleaseA__ReturnER
e 18 19  ReturnER__END
e 7 8  ERSepsisTriage__IVLiquid
e 3 4  ERTriage__LacticAcid
e 5 6  Leucocytes__CRP
e 4 5  LacticAcid__Leucocytes
e 8 9  IVLiquid__IVAntibiotics
e 11 12  AdmissionNC__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__AdmissionNC
e 13 14  Leucocytes__Leucocytes
e 16 17  CRP__ReleaseA
e 14 15  Leucocytes__CRP
e 15 16  CRP__CRP


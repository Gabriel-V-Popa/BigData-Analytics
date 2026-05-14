v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 LacticAcid
v 7 CRP
v 8 Leucocytes
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 CRP
v 12 LacticAcid
v 13 Leucocytes
v 14 AdmissionNC
v 15 Leucocytes
v 16 CRP
v 17 ReleaseA
v 18 ReturnER
v 19 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 7 8  CRP__Leucocytes
e 8 9  Leucocytes__IVAntibiotics
e 12 13  LacticAcid__Leucocytes
e 13 14  Leucocytes__AdmissionNC
e 17 18  ReleaseA__ReturnER
e 18 19  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 6 7  LacticAcid__CRP
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__LacticAcid
e 9 10  IVAntibiotics__AdmissionNC
e 11 12  CRP__LacticAcid
e 10 11  AdmissionNC__CRP
e 14 15  AdmissionNC__Leucocytes
e 16 17  CRP__ReleaseA
e 15 16  Leucocytes__CRP


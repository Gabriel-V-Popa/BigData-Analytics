v 1 START
v 2 ERSepsisTriage
v 3 ERRegistration
v 4 ERTriage
v 5 Leucocytes
v 6 CRP
v 7 LacticAcid
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionIC
v 11 LacticAcid
v 12 CRP
v 13 CRP
v 14 LacticAcid
v 15 Leucocytes
v 16 AdmissionNC
v 17 ReleaseA
v 18 ReturnER
v 19 END
e 3 4  ERRegistration__ERTriage
e 9 10  IVAntibiotics__AdmissionIC
e 9 11  IVAntibiotics__LacticAcid
e 15 16  Leucocytes__AdmissionNC
e 16 17  AdmissionNC__ReleaseA
e 17 18  ReleaseA__ReturnER
e 18 19  ReturnER__END
e 1 2  START__ERSepsisTriage
e 2 3  ERSepsisTriage__ERRegistration
e 4 5  ERTriage__Leucocytes
e 5 6  Leucocytes__CRP
e 6 7  CRP__LacticAcid
e 8 9  IVLiquid__IVAntibiotics
e 7 8  LacticAcid__IVLiquid
e 10 12  AdmissionIC__CRP
e 11 12  LacticAcid__CRP
e 14 15  LacticAcid__Leucocytes
e 12 13  CRP__CRP
e 13 14  CRP__LacticAcid


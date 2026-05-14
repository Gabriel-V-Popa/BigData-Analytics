v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 LacticAcid
v 7 Leucocytes
v 8 CRP
v 9 IVAntibiotics
v 10 AdmissionIC
v 11 CRP
v 12 Leucocytes
v 13 LacticAcid
v 14 LacticAcid
v 15 Leucocytes
v 16 AdmissionNC
v 17 CRP
v 18 ReleaseA
v 19 ReturnER
v 20 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 9 10  IVAntibiotics__AdmissionIC
e 9 13  IVAntibiotics__LacticAcid
e 15 16  Leucocytes__AdmissionNC
e 18 19  ReleaseA__ReturnER
e 19 20  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVLiquid
e 6 7  LacticAcid__Leucocytes
e 5 6  IVLiquid__LacticAcid
e 7 8  Leucocytes__CRP
e 8 9  CRP__IVAntibiotics
e 10 11  AdmissionIC__CRP
e 11 12  CRP__Leucocytes
e 13 14  LacticAcid__LacticAcid
e 12 14  Leucocytes__LacticAcid
e 14 15  LacticAcid__Leucocytes
e 16 17  AdmissionNC__CRP
e 17 18  CRP__ReleaseA


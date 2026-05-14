v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 IVAntibiotics
v 7 CRP
v 8 Leucocytes
v 9 LacticAcid
v 10 AdmissionIC
v 11 LacticAcid
v 12 CRP
v 13 Leucocytes
v 14 CRP
v 15 Leucocytes
v 16 LacticAcid
v 17 AdmissionNC
v 18 ReleaseA
v 19 ReturnER
v 20 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 7 8  CRP__Leucocytes
e 13 14  Leucocytes__CRP
e 14 15  CRP__Leucocytes
e 17 18  AdmissionNC__ReleaseA
e 18 19  ReleaseA__ReturnER
e 19 20  ReturnER__END
e 8 9  Leucocytes__LacticAcid
e 8 10  Leucocytes__AdmissionIC
e 3 4  ERTriage__ERSepsisTriage
e 6 7  IVAntibiotics__CRP
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__IVAntibiotics
e 9 11  LacticAcid__LacticAcid
e 10 11  AdmissionIC__LacticAcid
e 12 13  CRP__Leucocytes
e 11 12  LacticAcid__CRP
e 15 16  Leucocytes__LacticAcid
e 16 17  LacticAcid__AdmissionNC


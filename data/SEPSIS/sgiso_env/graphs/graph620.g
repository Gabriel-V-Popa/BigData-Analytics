v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 Leucocytes
v 7 CRP
v 8 LacticAcid
v 9 IVAntibiotics
v 10 AdmissionIC
v 11 CRP
v 12 LacticAcid
v 13 Leucocytes
v 14 AdmissionIC
v 15 AdmissionNC
v 16 CRP
v 17 Leucocytes
v 18 ReleaseA
v 19 ReturnER
v 20 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 9 10  IVAntibiotics__AdmissionIC
e 9 12  IVAntibiotics__LacticAcid
e 12 13  LacticAcid__Leucocytes
e 15 16  AdmissionNC__CRP
e 16 17  CRP__Leucocytes
e 17 18  Leucocytes__ReleaseA
e 18 19  ReleaseA__ReturnER
e 19 20  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__Leucocytes
e 6 7  Leucocytes__CRP
e 8 9  LacticAcid__IVAntibiotics
e 7 8  CRP__LacticAcid
e 11 13  CRP__Leucocytes
e 10 11  AdmissionIC__CRP
e 13 14  Leucocytes__AdmissionIC
e 14 15  AdmissionIC__AdmissionNC


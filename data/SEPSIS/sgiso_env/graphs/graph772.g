v 1 START
v 2 ERRegistration
v 3 IVLiquid
v 4 ERTriage
v 5 ERSepsisTriage
v 6 Leucocytes
v 7 CRP
v 8 LacticAcid
v 9 IVAntibiotics
v 10 AdmissionIC
v 11 Leucocytes
v 12 CRP
v 13 LacticAcid
v 14 AdmissionNC
v 15 Leucocytes
v 16 AdmissionNC
v 17 ReleaseA
v 18 ReturnER
v 19 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__IVLiquid
e 5 6  ERSepsisTriage__Leucocytes
e 9 10  IVAntibiotics__AdmissionIC
e 9 13  IVAntibiotics__LacticAcid
e 15 16  Leucocytes__AdmissionNC
e 16 17  AdmissionNC__ReleaseA
e 17 18  ReleaseA__ReturnER
e 18 19  ReturnER__END
e 3 4  IVLiquid__ERTriage
e 4 5  ERTriage__ERSepsisTriage
e 6 7  Leucocytes__CRP
e 8 9  LacticAcid__IVAntibiotics
e 7 8  CRP__LacticAcid
e 10 11  AdmissionIC__Leucocytes
e 11 12  Leucocytes__CRP
e 13 14  LacticAcid__AdmissionNC
e 12 14  CRP__AdmissionNC
e 14 15  AdmissionNC__Leucocytes


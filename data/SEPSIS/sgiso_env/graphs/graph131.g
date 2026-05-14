v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 LacticAcid
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 Leucocytes
v 12 CRP
v 13 AdmissionIC
v 14 Leucocytes
v 15 LacticAcid
v 16 CRP
v 17 AdmissionNC
v 18 ReleaseA
v 19 ReturnER
v 20 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 5 6  Leucocytes__CRP
e 11 12  Leucocytes__CRP
e 17 18  AdmissionNC__ReleaseA
e 18 19  ReleaseA__ReturnER
e 19 20  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 6 7  CRP__LacticAcid
e 10 11  AdmissionNC__Leucocytes
e 7 8  LacticAcid__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 12 13  CRP__AdmissionIC
e 13 14  AdmissionIC__Leucocytes
e 14 15  Leucocytes__LacticAcid
e 16 17  CRP__AdmissionNC
e 15 16  LacticAcid__CRP


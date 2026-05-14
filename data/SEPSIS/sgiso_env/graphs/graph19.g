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
v 11 AdmissionIC
v 12 LacticAcid
v 13 Leucocytes
v 14 CRP
v 15 AdmissionNC
v 16 Leucocytes
v 17 CRP
v 18 Leucocytes
v 19 ReleaseA
v 20 ReturnER
v 21 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 11 13  AdmissionIC__Leucocytes
e 12 13  LacticAcid__Leucocytes
e 13 14  Leucocytes__CRP
e 16 17  Leucocytes__CRP
e 17 18  CRP__Leucocytes
e 18 19  Leucocytes__ReleaseA
e 19 20  ReleaseA__ReturnER
e 20 21  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__CRP
e 8 9  IVLiquid__IVAntibiotics
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__IVLiquid
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__AdmissionIC
e 10 12  AdmissionNC__LacticAcid
e 14 15  CRP__AdmissionNC
e 15 16  AdmissionNC__Leucocytes


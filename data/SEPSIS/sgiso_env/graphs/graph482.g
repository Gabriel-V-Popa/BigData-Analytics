v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 Leucocytes
v 7 LacticAcid
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionIC
v 11 CRP
v 12 LacticAcid
v 13 Leucocytes
v 14 LacticAcid
v 15 LacticAcid
v 16 CRP
v 17 Leucocytes
v 18 AdmissionNC
v 19 CRP
v 20 Leucocytes
v 21 CRP
v 22 ReleaseA
v 23 ReturnER
v 24 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 9 10  IVAntibiotics__AdmissionIC
e 9 12  IVAntibiotics__LacticAcid
e 12 13  LacticAcid__Leucocytes
e 16 17  CRP__Leucocytes
e 17 18  Leucocytes__AdmissionNC
e 18 19  AdmissionNC__CRP
e 19 20  CRP__Leucocytes
e 22 23  ReleaseA__ReturnER
e 23 24  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 6 7  Leucocytes__LacticAcid
e 8 9  IVLiquid__IVAntibiotics
e 7 8  LacticAcid__IVLiquid
e 11 13  CRP__Leucocytes
e 10 11  AdmissionIC__CRP
e 13 14  Leucocytes__LacticAcid
e 15 16  LacticAcid__CRP
e 14 15  LacticAcid__LacticAcid
e 20 21  Leucocytes__CRP
e 21 22  CRP__ReleaseA


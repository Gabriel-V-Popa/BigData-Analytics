v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 CRP
v 5 Leucocytes
v 6 LacticAcid
v 7 ERSepsisTriage
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionIC
v 11 LacticAcid
v 12 CRP
v 13 Leucocytes
v 14 Leucocytes
v 15 CRP
v 16 LacticAcid
v 17 CRP
v 18 LacticAcid
v 19 Leucocytes
v 20 AdmissionNC
v 21 Leucocytes
v 22 CRP
v 23 ReleaseA
v 24 ReturnER
v 25 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__CRP
e 4 5  CRP__Leucocytes
e 9 10  IVAntibiotics__AdmissionIC
e 9 11  IVAntibiotics__LacticAcid
e 19 20  Leucocytes__AdmissionNC
e 23 24  ReleaseA__ReturnER
e 24 25  ReturnER__END
e 5 6  Leucocytes__LacticAcid
e 8 9  IVLiquid__IVAntibiotics
e 6 7  LacticAcid__ERSepsisTriage
e 7 8  ERSepsisTriage__IVLiquid
e 10 12  AdmissionIC__CRP
e 11 12  LacticAcid__CRP
e 12 13  CRP__Leucocytes
e 13 14  Leucocytes__Leucocytes
e 14 15  Leucocytes__CRP
e 15 16  CRP__LacticAcid
e 18 19  LacticAcid__Leucocytes
e 16 17  LacticAcid__CRP
e 17 18  CRP__LacticAcid
e 20 21  AdmissionNC__Leucocytes
e 22 23  CRP__ReleaseA
e 21 22  Leucocytes__CRP


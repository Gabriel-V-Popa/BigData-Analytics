v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 IVAntibiotics
v 7 Leucocytes
v 8 CRP
v 9 CRP
v 10 Leucocytes
v 11 LacticAcid
v 12 AdmissionIC
v 13 CRP
v 14 LacticAcid
v 15 Leucocytes
v 16 Leucocytes
v 17 CRP
v 18 LacticAcid
v 19 AdmissionNC
v 20 Leucocytes
v 21 CRP
v 22 ReleaseA
v 23 ReturnER
v 24 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 7 8  Leucocytes__CRP
e 22 23  ReleaseA__ReturnER
e 23 24  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 10 11  Leucocytes__LacticAcid
e 10 12  Leucocytes__AdmissionIC
e 4 5  ERSepsisTriage__IVLiquid
e 6 7  IVAntibiotics__Leucocytes
e 5 6  IVLiquid__IVAntibiotics
e 8 9  CRP__CRP
e 9 10  CRP__Leucocytes
e 11 13  LacticAcid__CRP
e 12 13  AdmissionIC__CRP
e 14 15  LacticAcid__Leucocytes
e 13 14  CRP__LacticAcid
e 15 16  Leucocytes__Leucocytes
e 16 17  Leucocytes__CRP
e 17 18  CRP__LacticAcid
e 19 20  AdmissionNC__Leucocytes
e 18 19  LacticAcid__AdmissionNC
e 20 21  Leucocytes__CRP
e 21 22  CRP__ReleaseA


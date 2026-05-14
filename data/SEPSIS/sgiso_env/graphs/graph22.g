v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 Leucocytes
v 7 LacticAcid
v 8 CRP
v 9 IVAntibiotics
v 10 AdmissionIC
v 11 LacticAcid
v 12 CRP
v 13 Leucocytes
v 14 LacticAcid
v 15 LacticAcid
v 16 CRP
v 17 Leucocytes
v 18 AdmissionNC
v 19 Leucocytes
v 20 CRP
v 21 ReleaseA
v 22 ReturnER
v 23 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 9 10  IVAntibiotics__AdmissionIC
e 9 11  IVAntibiotics__LacticAcid
e 16 17  CRP__Leucocytes
e 17 18  Leucocytes__AdmissionNC
e 21 22  ReleaseA__ReturnER
e 22 23  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__Leucocytes
e 6 7  Leucocytes__LacticAcid
e 8 9  CRP__IVAntibiotics
e 7 8  LacticAcid__CRP
e 10 12  AdmissionIC__CRP
e 11 12  LacticAcid__CRP
e 12 13  CRP__Leucocytes
e 13 14  Leucocytes__LacticAcid
e 15 16  LacticAcid__CRP
e 14 15  LacticAcid__LacticAcid
e 18 19  AdmissionNC__Leucocytes
e 20 21  CRP__ReleaseA
e 19 20  Leucocytes__CRP


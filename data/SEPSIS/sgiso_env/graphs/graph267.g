v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 IVAntibiotics
v 7 CRP
v 8 LacticAcid
v 9 Leucocytes
v 10 AdmissionIC
v 11 Leucocytes
v 12 CRP
v 13 LacticAcid
v 14 LacticAcid
v 15 CRP
v 16 Leucocytes
v 17 LacticAcid
v 18 Leucocytes
v 19 CRP
v 20 AdmissionNC
v 21 ReleaseA
v 22 ReturnER
v 23 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 10 11  AdmissionIC__Leucocytes
e 11 12  Leucocytes__CRP
e 17 18  LacticAcid__Leucocytes
e 20 21  AdmissionNC__ReleaseA
e 21 22  ReleaseA__ReturnER
e 22 23  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 16 17  Leucocytes__LacticAcid
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__IVAntibiotics
e 6 7  IVAntibiotics__CRP
e 7 8  CRP__LacticAcid
e 7 10  CRP__AdmissionIC
e 9 11  Leucocytes__Leucocytes
e 8 9  LacticAcid__Leucocytes
e 12 13  CRP__LacticAcid
e 15 16  CRP__Leucocytes
e 13 14  LacticAcid__LacticAcid
e 14 15  LacticAcid__CRP
e 18 19  Leucocytes__CRP
e 19 20  CRP__AdmissionNC


v 1 START
v 2 ERRegistration
v 3 IVLiquid
v 4 ERTriage
v 5 ERSepsisTriage
v 6 IVAntibiotics
v 7 CRP
v 8 LacticAcid
v 9 Leucocytes
v 10 AdmissionIC
v 11 CRP
v 12 LacticAcid
v 13 Leucocytes
v 14 CRP
v 15 Leucocytes
v 16 LacticAcid
v 17 LacticAcid
v 18 CRP
v 19 Leucocytes
v 20 Leucocytes
v 21 CRP
v 22 LacticAcid
v 23 AdmissionNC
v 24 ReleaseA
v 25 ReturnER
v 26 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__IVLiquid
e 12 13  LacticAcid__Leucocytes
e 13 14  Leucocytes__CRP
e 14 15  CRP__Leucocytes
e 18 19  CRP__Leucocytes
e 23 24  AdmissionNC__ReleaseA
e 24 25  ReleaseA__ReturnER
e 25 26  ReturnER__END
e 9 10  Leucocytes__AdmissionIC
e 9 12  Leucocytes__LacticAcid
e 3 4  IVLiquid__ERTriage
e 6 7  IVAntibiotics__CRP
e 4 5  ERTriage__ERSepsisTriage
e 5 6  ERSepsisTriage__IVAntibiotics
e 7 8  CRP__LacticAcid
e 8 9  LacticAcid__Leucocytes
e 11 13  CRP__Leucocytes
e 10 11  AdmissionIC__CRP
e 15 16  Leucocytes__LacticAcid
e 17 18  LacticAcid__CRP
e 16 17  LacticAcid__LacticAcid
e 19 20  Leucocytes__Leucocytes
e 22 23  LacticAcid__AdmissionNC
e 20 21  Leucocytes__CRP
e 21 22  CRP__LacticAcid


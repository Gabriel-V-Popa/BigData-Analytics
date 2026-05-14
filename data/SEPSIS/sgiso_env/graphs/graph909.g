v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 IVAntibiotics
v 7 AdmissionIC
v 8 CRP
v 9 Leucocytes
v 10 LacticAcid
v 11 CRP
v 12 Leucocytes
v 13 LacticAcid
v 14 CRP
v 15 LacticAcid
v 16 Leucocytes
v 17 Leucocytes
v 18 CRP
v 19 LacticAcid
v 20 Leucocytes
v 21 CRP
v 22 LacticAcid
v 23 AdmissionNC
v 24 Leucocytes
v 25 CRP
v 26 ReleaseA
v 27 ReturnER
v 28 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 8 9  CRP__Leucocytes
e 11 12  CRP__Leucocytes
e 20 21  Leucocytes__CRP
e 26 27  ReleaseA__ReturnER
e 27 28  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 7 8  AdmissionIC__CRP
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__IVAntibiotics
e 6 7  IVAntibiotics__AdmissionIC
e 9 10  Leucocytes__LacticAcid
e 10 11  LacticAcid__CRP
e 12 13  Leucocytes__LacticAcid
e 13 14  LacticAcid__CRP
e 14 15  CRP__LacticAcid
e 15 16  LacticAcid__Leucocytes
e 16 17  Leucocytes__Leucocytes
e 17 18  Leucocytes__CRP
e 18 19  CRP__LacticAcid
e 19 20  LacticAcid__Leucocytes
e 21 22  CRP__LacticAcid
e 23 24  AdmissionNC__Leucocytes
e 22 23  LacticAcid__AdmissionNC
e 24 25  Leucocytes__CRP
e 25 26  CRP__ReleaseA


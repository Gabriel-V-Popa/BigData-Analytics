v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 Leucocytes
v 7 CRP
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 AdmissionIC
v 11 LacticAcid
v 12 CRP
v 13 Leucocytes
v 14 Leucocytes
v 15 CRP
v 16 LacticAcid
v 17 LacticAcid
v 18 Leucocytes
v 19 LacticAcid
v 20 CRP
v 21 Leucocytes
v 22 LacticAcid
v 23 LacticAcid
v 24 Leucocytes
v 25 LacticAcid
v 26 CRP
v 27 AdmissionNC
v 28 Leucocytes
v 29 CRP
v 30 Leucocytes
v 31 CRP
v 32 ReleaseA
v 33 ReturnER
v 34 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 20 21  CRP__Leucocytes
e 28 29  Leucocytes__CRP
e 29 30  CRP__Leucocytes
e 32 33  ReleaseA__ReturnER
e 33 34  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 21 22  Leucocytes__LacticAcid
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__Leucocytes
e 6 7  Leucocytes__CRP
e 7 8  CRP__IVAntibiotics
e 8 9  IVAntibiotics__AdmissionNC
e 9 10  AdmissionNC__AdmissionIC
e 9 11  AdmissionNC__LacticAcid
e 10 12  AdmissionIC__CRP
e 11 12  LacticAcid__CRP
e 12 13  CRP__Leucocytes
e 13 14  Leucocytes__Leucocytes
e 14 15  Leucocytes__CRP
e 15 16  CRP__LacticAcid
e 17 18  LacticAcid__Leucocytes
e 16 17  LacticAcid__LacticAcid
e 18 19  Leucocytes__LacticAcid
e 19 20  LacticAcid__CRP
e 22 23  LacticAcid__LacticAcid
e 23 24  LacticAcid__Leucocytes
e 24 25  Leucocytes__LacticAcid
e 25 26  LacticAcid__CRP
e 26 27  CRP__AdmissionNC
e 27 28  AdmissionNC__Leucocytes
e 30 31  Leucocytes__CRP
e 31 32  CRP__ReleaseA


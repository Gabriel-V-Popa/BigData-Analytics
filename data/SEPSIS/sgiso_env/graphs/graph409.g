v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 LacticAcid
v 6 Leucocytes
v 7 CRP
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionIC
v 11 LacticAcid
v 12 LacticAcid
v 13 Leucocytes
v 14 LacticAcid
v 15 CRP
v 16 LacticAcid
v 17 Leucocytes
v 18 LacticAcid
v 19 LacticAcid
v 20 Leucocytes
v 21 CRP
v 22 LacticAcid
v 23 LacticAcid
v 24 CRP
v 25 LacticAcid
v 26 Leucocytes
v 27 Leucocytes
v 28 CRP
v 29 LacticAcid
v 30 Leucocytes
v 31 CRP
v 32 LacticAcid
v 33 AdmissionNC
v 34 ReleaseA
v 35 ReturnER
v 36 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 9 10  IVAntibiotics__AdmissionIC
e 9 11  IVAntibiotics__LacticAcid
e 20 21  Leucocytes__CRP
e 33 34  AdmissionNC__ReleaseA
e 34 35  ReleaseA__ReturnER
e 35 36  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 17 18  Leucocytes__LacticAcid
e 4 5  ERSepsisTriage__LacticAcid
e 5 6  LacticAcid__Leucocytes
e 6 7  Leucocytes__CRP
e 8 9  IVLiquid__IVAntibiotics
e 7 8  CRP__IVLiquid
e 10 12  AdmissionIC__LacticAcid
e 11 12  LacticAcid__LacticAcid
e 12 13  LacticAcid__Leucocytes
e 13 14  Leucocytes__LacticAcid
e 14 15  LacticAcid__CRP
e 15 16  CRP__LacticAcid
e 16 17  LacticAcid__Leucocytes
e 18 19  LacticAcid__LacticAcid
e 19 20  LacticAcid__Leucocytes
e 21 22  CRP__LacticAcid
e 25 26  LacticAcid__Leucocytes
e 22 23  LacticAcid__LacticAcid
e 23 24  LacticAcid__CRP
e 24 25  CRP__LacticAcid
e 26 27  Leucocytes__Leucocytes
e 27 28  Leucocytes__CRP
e 28 29  CRP__LacticAcid
e 29 30  LacticAcid__Leucocytes
e 30 31  Leucocytes__CRP
e 32 33  LacticAcid__AdmissionNC
e 31 32  CRP__LacticAcid


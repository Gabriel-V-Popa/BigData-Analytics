v 1 START
v 2 IVLiquid
v 3 ERRegistration
v 4 ERTriage
v 5 ERSepsisTriage
v 6 LacticAcid
v 7 Leucocytes
v 8 CRP
v 9 IVAntibiotics
v 10 AdmissionIC
v 11 LacticAcid
v 12 CRP
v 13 Leucocytes
v 14 Leucocytes
v 15 CRP
v 16 LacticAcid
v 17 Leucocytes
v 18 LacticAcid
v 19 CRP
v 20 CRP
v 21 Leucocytes
v 22 LacticAcid
v 23 CRP
v 24 LacticAcid
v 25 Leucocytes
v 26 LacticAcid
v 27 Leucocytes
v 28 CRP
v 29 CRP
v 30 Leucocytes
v 31 LacticAcid
v 32 AdmissionNC
v 33 CRP
v 34 Leucocytes
v 35 Leucocytes
v 36 ReleaseA
v 37 ReturnER
v 38 END
e 3 4  ERRegistration__ERTriage
e 9 10  IVAntibiotics__AdmissionIC
e 9 11  IVAntibiotics__LacticAcid
e 26 27  LacticAcid__Leucocytes
e 27 28  Leucocytes__CRP
e 32 33  AdmissionNC__CRP
e 33 34  CRP__Leucocytes
e 36 37  ReleaseA__ReturnER
e 37 38  ReturnER__END
e 4 5  ERTriage__ERSepsisTriage
e 25 26  Leucocytes__LacticAcid
e 1 2  START__IVLiquid
e 2 3  IVLiquid__ERRegistration
e 5 6  ERSepsisTriage__LacticAcid
e 6 7  LacticAcid__Leucocytes
e 7 8  Leucocytes__CRP
e 8 9  CRP__IVAntibiotics
e 10 12  AdmissionIC__CRP
e 11 12  LacticAcid__CRP
e 12 13  CRP__Leucocytes
e 13 14  Leucocytes__Leucocytes
e 14 15  Leucocytes__CRP
e 15 16  CRP__LacticAcid
e 16 17  LacticAcid__Leucocytes
e 17 18  Leucocytes__LacticAcid
e 18 19  LacticAcid__CRP
e 19 20  CRP__CRP
e 20 21  CRP__Leucocytes
e 21 22  Leucocytes__LacticAcid
e 22 23  LacticAcid__CRP
e 23 24  CRP__LacticAcid
e 24 25  LacticAcid__Leucocytes
e 28 29  CRP__CRP
e 29 30  CRP__Leucocytes
e 30 31  Leucocytes__LacticAcid
e 31 32  LacticAcid__AdmissionNC
e 34 35  Leucocytes__Leucocytes
e 35 36  Leucocytes__ReleaseA


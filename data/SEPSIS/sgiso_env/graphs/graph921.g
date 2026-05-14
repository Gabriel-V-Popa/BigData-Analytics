v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 LacticAcid
v 7 Leucocytes
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionIC
v 11 LacticAcid
v 12 Leucocytes
v 13 CRP
v 14 LacticAcid
v 15 Leucocytes
v 16 CRP
v 17 LacticAcid
v 18 AdmissionNC
v 19 Leucocytes
v 20 CRP
v 21 Leucocytes
v 22 CRP
v 23 CRP
v 24 Leucocytes
v 25 Leucocytes
v 26 CRP
v 27 Leucocytes
v 28 CRP
v 29 Leucocytes
v 30 CRP
v 31 ReleaseA
v 32 ReturnER
v 33 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 9 10  IVAntibiotics__AdmissionIC
e 9 11  IVAntibiotics__LacticAcid
e 10 12  AdmissionIC__Leucocytes
e 11 12  LacticAcid__Leucocytes
e 12 13  Leucocytes__CRP
e 15 16  Leucocytes__CRP
e 19 20  Leucocytes__CRP
e 20 21  CRP__Leucocytes
e 21 22  Leucocytes__CRP
e 26 27  CRP__Leucocytes
e 27 28  Leucocytes__CRP
e 28 29  CRP__Leucocytes
e 31 32  ReleaseA__ReturnER
e 32 33  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 5 6  CRP__LacticAcid
e 6 7  LacticAcid__Leucocytes
e 7 8  Leucocytes__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 13 14  CRP__LacticAcid
e 14 15  LacticAcid__Leucocytes
e 16 17  CRP__LacticAcid
e 18 19  AdmissionNC__Leucocytes
e 17 18  LacticAcid__AdmissionNC
e 22 23  CRP__CRP
e 23 24  CRP__Leucocytes
e 24 25  Leucocytes__Leucocytes
e 25 26  Leucocytes__CRP
e 29 30  Leucocytes__CRP
e 30 31  CRP__ReleaseA


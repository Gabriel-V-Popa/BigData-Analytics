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
v 11 Leucocytes
v 12 LacticAcid
v 13 CRP
v 14 Leucocytes
v 15 CRP
v 16 LacticAcid
v 17 LacticAcid
v 18 LacticAcid
v 19 CRP
v 20 Leucocytes
v 21 AdmissionNC
v 22 Leucocytes
v 23 CRP
v 24 Leucocytes
v 25 CRP
v 26 CRP
v 27 Leucocytes
v 28 CRP
v 29 ReleaseA
v 30 ReturnER
v 31 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 9 10  IVAntibiotics__AdmissionIC
e 9 12  IVAntibiotics__LacticAcid
e 14 15  Leucocytes__CRP
e 20 21  Leucocytes__AdmissionNC
e 23 24  CRP__Leucocytes
e 24 25  Leucocytes__CRP
e 29 30  ReleaseA__ReturnER
e 30 31  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__LacticAcid
e 5 6  LacticAcid__Leucocytes
e 6 7  Leucocytes__CRP
e 8 9  IVLiquid__IVAntibiotics
e 7 8  CRP__IVLiquid
e 10 11  AdmissionIC__Leucocytes
e 12 13  LacticAcid__CRP
e 11 13  Leucocytes__CRP
e 13 14  CRP__Leucocytes
e 15 16  CRP__LacticAcid
e 19 20  CRP__Leucocytes
e 16 17  LacticAcid__LacticAcid
e 17 18  LacticAcid__LacticAcid
e 18 19  LacticAcid__CRP
e 21 22  AdmissionNC__Leucocytes
e 22 23  Leucocytes__CRP
e 25 26  CRP__CRP
e 26 27  CRP__Leucocytes
e 27 28  Leucocytes__CRP
e 28 29  CRP__ReleaseA


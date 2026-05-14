v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 Leucocytes
v 7 IVLiquid
v 8 IVAntibiotics
v 9 AdmissionIC
v 10 LacticAcid
v 11 LacticAcid
v 12 Leucocytes
v 13 LacticAcid
v 14 CRP
v 15 LacticAcid
v 16 LacticAcid
v 17 LacticAcid
v 18 Leucocytes
v 19 CRP
v 20 LacticAcid
v 21 Leucocytes
v 22 CRP
v 23 AdmissionNC
v 24 Leucocytes
v 25 CRP
v 26 CRP
v 27 Leucocytes
v 28 CRP
v 29 Leucocytes
v 30 CRP
v 31 Leucocytes
v 32 CRP
v 33 ReleaseA
v 34 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 8 9  IVAntibiotics__AdmissionIC
e 8 10  IVAntibiotics__LacticAcid
e 18 19  Leucocytes__CRP
e 21 22  Leucocytes__CRP
e 24 25  Leucocytes__CRP
e 27 28  Leucocytes__CRP
e 28 29  CRP__Leucocytes
e 29 30  Leucocytes__CRP
e 30 31  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 6 7  Leucocytes__IVLiquid
e 7 8  IVLiquid__IVAntibiotics
e 9 11  AdmissionIC__LacticAcid
e 10 11  LacticAcid__LacticAcid
e 11 12  LacticAcid__Leucocytes
e 12 13  Leucocytes__LacticAcid
e 13 14  LacticAcid__CRP
e 14 15  CRP__LacticAcid
e 17 18  LacticAcid__Leucocytes
e 15 16  LacticAcid__LacticAcid
e 16 17  LacticAcid__LacticAcid
e 19 20  CRP__LacticAcid
e 20 21  LacticAcid__Leucocytes
e 22 23  CRP__AdmissionNC
e 23 24  AdmissionNC__Leucocytes
e 25 26  CRP__CRP
e 26 27  CRP__Leucocytes
e 31 32  Leucocytes__CRP
e 33 34  ReleaseA__END
e 32 33  CRP__ReleaseA


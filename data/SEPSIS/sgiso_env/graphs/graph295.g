v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 LacticAcid
v 8 IVAntibiotics
v 9 IVLiquid
v 10 AdmissionIC
v 11 CRP
v 12 LacticAcid
v 13 Leucocytes
v 14 LacticAcid
v 15 LacticAcid
v 16 LacticAcid
v 17 CRP
v 18 LacticAcid
v 19 Leucocytes
v 20 LacticAcid
v 21 LacticAcid
v 22 LacticAcid
v 23 LacticAcid
v 24 LacticAcid
v 25 Leucocytes
v 26 CRP
v 27 AdmissionNC
v 28 CRP
v 29 Leucocytes
v 30 Leucocytes
v 31 CRP
v 32 ReleaseA
v 33 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 12 13  LacticAcid__Leucocytes
e 27 28  AdmissionNC__CRP
e 28 29  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 19 20  Leucocytes__LacticAcid
e 5 6  Leucocytes__CRP
e 7 8  LacticAcid__IVAntibiotics
e 6 7  CRP__LacticAcid
e 8 9  IVAntibiotics__IVLiquid
e 9 10  IVLiquid__AdmissionIC
e 9 12  IVLiquid__LacticAcid
e 11 13  CRP__Leucocytes
e 10 11  AdmissionIC__CRP
e 13 14  Leucocytes__LacticAcid
e 16 17  LacticAcid__CRP
e 14 15  LacticAcid__LacticAcid
e 15 16  LacticAcid__LacticAcid
e 17 18  CRP__LacticAcid
e 18 19  LacticAcid__Leucocytes
e 20 21  LacticAcid__LacticAcid
e 24 25  LacticAcid__Leucocytes
e 21 22  LacticAcid__LacticAcid
e 22 23  LacticAcid__LacticAcid
e 23 24  LacticAcid__LacticAcid
e 25 26  Leucocytes__CRP
e 26 27  CRP__AdmissionNC
e 29 30  Leucocytes__Leucocytes
e 32 33  ReleaseA__END
e 30 31  Leucocytes__CRP
e 31 32  CRP__ReleaseA


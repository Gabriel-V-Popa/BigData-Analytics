v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 IVAntibiotics
v 7 LacticAcid
v 8 Leucocytes
v 9 CRP
v 10 AdmissionIC
v 11 Leucocytes
v 12 CRP
v 13 LacticAcid
v 14 CRP
v 15 LacticAcid
v 16 Leucocytes
v 17 LacticAcid
v 18 CRP
v 19 Leucocytes
v 20 LacticAcid
v 21 AdmissionNC
v 22 CRP
v 23 Leucocytes
v 24 Leucocytes
v 25 CRP
v 26 CRP
v 27 Leucocytes
v 28 CRP
v 29 Leucocytes
v 30 CRP
v 31 Leucocytes
v 32 Leucocytes
v 33 CRP
v 34 ReleaseA
v 35 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  IVAntibiotics__LacticAcid
e 7 8  LacticAcid__Leucocytes
e 8 9  Leucocytes__CRP
e 11 12  Leucocytes__CRP
e 18 19  CRP__Leucocytes
e 21 22  AdmissionNC__CRP
e 22 23  CRP__Leucocytes
e 27 28  Leucocytes__CRP
e 28 29  CRP__Leucocytes
e 29 30  Leucocytes__CRP
e 30 31  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__IVAntibiotics
e 9 10  CRP__AdmissionIC
e 10 11  AdmissionIC__Leucocytes
e 12 13  CRP__LacticAcid
e 15 16  LacticAcid__Leucocytes
e 13 14  LacticAcid__CRP
e 14 15  CRP__LacticAcid
e 16 17  Leucocytes__LacticAcid
e 17 18  LacticAcid__CRP
e 19 20  Leucocytes__LacticAcid
e 20 21  LacticAcid__AdmissionNC
e 23 24  Leucocytes__Leucocytes
e 24 25  Leucocytes__CRP
e 25 26  CRP__CRP
e 26 27  CRP__Leucocytes
e 31 32  Leucocytes__Leucocytes
e 34 35  ReleaseA__END
e 32 33  Leucocytes__CRP
e 33 34  CRP__ReleaseA


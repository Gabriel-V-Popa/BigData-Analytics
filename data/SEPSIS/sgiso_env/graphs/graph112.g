v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 Leucocytes
v 5 CRP
v 6 LacticAcid
v 7 ERSepsisTriage
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionIC
v 11 AdmissionIC
v 12 Leucocytes
v 13 CRP
v 14 LacticAcid
v 15 Leucocytes
v 16 CRP
v 17 LacticAcid
v 18 Leucocytes
v 19 Leucocytes
v 20 CRP
v 21 LacticAcid
v 22 LacticAcid
v 23 CRP
v 24 LacticAcid
v 25 Leucocytes
v 26 LacticAcid
v 27 Leucocytes
v 28 CRP
v 29 Leucocytes
v 30 LacticAcid
v 31 CRP
v 32 AdmissionNC
v 33 ReleaseA
v 34 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 9 10  IVAntibiotics__AdmissionIC
e 9 14  IVAntibiotics__LacticAcid
e 14 15  LacticAcid__Leucocytes
e 15 16  Leucocytes__CRP
e 26 27  LacticAcid__Leucocytes
e 27 28  Leucocytes__CRP
e 28 29  CRP__Leucocytes
e 25 26  Leucocytes__LacticAcid
e 3 4  ERTriage__Leucocytes
e 4 5  Leucocytes__CRP
e 5 6  CRP__LacticAcid
e 6 7  LacticAcid__ERSepsisTriage
e 7 8  ERSepsisTriage__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 13 15  CRP__Leucocytes
e 10 11  AdmissionIC__AdmissionIC
e 11 12  AdmissionIC__Leucocytes
e 12 13  Leucocytes__CRP
e 16 17  CRP__LacticAcid
e 17 18  LacticAcid__Leucocytes
e 18 19  Leucocytes__Leucocytes
e 19 20  Leucocytes__CRP
e 20 21  CRP__LacticAcid
e 24 25  LacticAcid__Leucocytes
e 21 22  LacticAcid__LacticAcid
e 22 23  LacticAcid__CRP
e 23 24  CRP__LacticAcid
e 29 30  Leucocytes__LacticAcid
e 31 32  CRP__AdmissionNC
e 30 31  LacticAcid__CRP
e 32 33  AdmissionNC__ReleaseA
e 33 34  ReleaseA__END


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
v 11 CRP
v 12 Leucocytes
v 13 LacticAcid
v 14 LacticAcid
v 15 Leucocytes
v 16 CRP
v 17 LacticAcid
v 18 Leucocytes
v 19 CRP
v 20 Leucocytes
v 21 CRP
v 22 LacticAcid
v 23 Leucocytes
v 24 CRP
v 25 LacticAcid
v 26 AdmissionNC
v 27 CRP
v 28 Leucocytes
v 29 CRP
v 30 Leucocytes
v 31 ReleaseA
v 32 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 9 10  IVAntibiotics__AdmissionIC
e 9 13  IVAntibiotics__LacticAcid
e 15 16  Leucocytes__CRP
e 18 19  Leucocytes__CRP
e 19 20  CRP__Leucocytes
e 20 21  Leucocytes__CRP
e 26 27  AdmissionNC__CRP
e 27 28  CRP__Leucocytes
e 28 29  Leucocytes__CRP
e 29 30  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 5 6  CRP__LacticAcid
e 6 7  LacticAcid__Leucocytes
e 7 8  Leucocytes__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 10 11  AdmissionIC__CRP
e 11 12  CRP__Leucocytes
e 13 14  LacticAcid__LacticAcid
e 12 14  Leucocytes__LacticAcid
e 14 15  LacticAcid__Leucocytes
e 16 17  CRP__LacticAcid
e 17 18  LacticAcid__Leucocytes
e 21 22  CRP__LacticAcid
e 22 23  LacticAcid__Leucocytes
e 23 24  Leucocytes__CRP
e 25 26  LacticAcid__AdmissionNC
e 24 25  CRP__LacticAcid
e 30 31  Leucocytes__ReleaseA
e 31 32  ReleaseA__END


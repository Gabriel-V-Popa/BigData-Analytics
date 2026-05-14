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
v 11 Leucocytes
v 12 CRP
v 13 LacticAcid
v 14 CRP
v 15 LacticAcid
v 16 Leucocytes
v 17 AdmissionNC
v 18 Leucocytes
v 19 CRP
v 20 Leucocytes
v 21 CRP
v 22 Leucocytes
v 23 CRP
v 24 Leucocytes
v 25 CRP
v 26 CRP
v 27 Leucocytes
v 28 Leucocytes
v 29 CRP
v 30 Leucocytes
v 31 CRP
v 32 ReleaseA
v 33 END
e 3 4  ERRegistration__ERTriage
e 9 10  IVAntibiotics__AdmissionIC
e 9 13  IVAntibiotics__LacticAcid
e 16 17  Leucocytes__AdmissionNC
e 19 20  CRP__Leucocytes
e 20 21  Leucocytes__CRP
e 21 22  CRP__Leucocytes
e 22 23  Leucocytes__CRP
e 23 24  CRP__Leucocytes
e 24 25  Leucocytes__CRP
e 29 30  CRP__Leucocytes
e 4 5  ERTriage__ERSepsisTriage
e 1 2  START__IVLiquid
e 2 3  IVLiquid__ERRegistration
e 5 6  ERSepsisTriage__LacticAcid
e 6 7  LacticAcid__Leucocytes
e 7 8  Leucocytes__CRP
e 8 9  CRP__IVAntibiotics
e 10 11  AdmissionIC__Leucocytes
e 11 12  Leucocytes__CRP
e 13 14  LacticAcid__CRP
e 12 14  CRP__CRP
e 15 16  LacticAcid__Leucocytes
e 14 15  CRP__LacticAcid
e 17 18  AdmissionNC__Leucocytes
e 18 19  Leucocytes__CRP
e 25 26  CRP__CRP
e 26 27  CRP__Leucocytes
e 27 28  Leucocytes__Leucocytes
e 28 29  Leucocytes__CRP
e 30 31  Leucocytes__CRP
e 32 33  ReleaseA__END
e 31 32  CRP__ReleaseA


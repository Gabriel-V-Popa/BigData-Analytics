v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 LacticAcid
v 7 Leucocytes
v 8 CRP
v 9 IVAntibiotics
v 10 AdmissionIC
v 11 CRP
v 12 Leucocytes
v 13 LacticAcid
v 14 Leucocytes
v 15 LacticAcid
v 16 CRP
v 17 CRP
v 18 Leucocytes
v 19 LacticAcid
v 20 LacticAcid
v 21 CRP
v 22 Leucocytes
v 23 AdmissionNC
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
v 34 CRP
v 35 Leucocytes
v 36 ReleaseA
v 37 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 9 10  IVAntibiotics__AdmissionIC
e 9 13  IVAntibiotics__LacticAcid
e 13 14  LacticAcid__Leucocytes
e 21 22  CRP__Leucocytes
e 22 23  Leucocytes__AdmissionNC
e 27 28  Leucocytes__CRP
e 28 29  CRP__Leucocytes
e 29 30  Leucocytes__CRP
e 30 31  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVLiquid
e 6 7  LacticAcid__Leucocytes
e 5 6  IVLiquid__LacticAcid
e 7 8  Leucocytes__CRP
e 8 9  CRP__IVAntibiotics
e 12 14  Leucocytes__Leucocytes
e 10 11  AdmissionIC__CRP
e 11 12  CRP__Leucocytes
e 14 15  Leucocytes__LacticAcid
e 15 16  LacticAcid__CRP
e 16 17  CRP__CRP
e 17 18  CRP__Leucocytes
e 18 19  Leucocytes__LacticAcid
e 20 21  LacticAcid__CRP
e 19 20  LacticAcid__LacticAcid
e 23 24  AdmissionNC__Leucocytes
e 24 25  Leucocytes__CRP
e 25 26  CRP__CRP
e 26 27  CRP__Leucocytes
e 31 32  Leucocytes__Leucocytes
e 32 33  Leucocytes__CRP
e 33 34  CRP__CRP
e 34 35  CRP__Leucocytes
e 35 36  Leucocytes__ReleaseA
e 36 37  ReleaseA__END


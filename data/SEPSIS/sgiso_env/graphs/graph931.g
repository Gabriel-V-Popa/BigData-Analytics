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
v 12 Leucocytes
v 13 LacticAcid
v 14 Leucocytes
v 15 LacticAcid
v 16 LacticAcid
v 17 CRP
v 18 Leucocytes
v 19 Leucocytes
v 20 CRP
v 21 LacticAcid
v 22 Leucocytes
v 23 LacticAcid
v 24 CRP
v 25 LacticAcid
v 26 Leucocytes
v 27 CRP
v 28 AdmissionNC
v 29 Leucocytes
v 30 CRP
v 31 Leucocytes
v 32 Leucocytes
v 33 CRP
v 34 Leucocytes
v 35 CRP
v 36 Leucocytes
v 37 ReleaseA
v 38 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 13 14  LacticAcid__Leucocytes
e 17 18  CRP__Leucocytes
e 26 27  Leucocytes__CRP
e 29 30  Leucocytes__CRP
e 30 31  CRP__Leucocytes
e 33 34  CRP__Leucocytes
e 34 35  Leucocytes__CRP
e 35 36  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__CRP
e 7 8  LacticAcid__IVAntibiotics
e 6 7  CRP__LacticAcid
e 8 9  IVAntibiotics__IVLiquid
e 9 10  IVLiquid__AdmissionIC
e 9 13  IVLiquid__LacticAcid
e 12 14  Leucocytes__Leucocytes
e 10 11  AdmissionIC__CRP
e 11 12  CRP__Leucocytes
e 14 15  Leucocytes__LacticAcid
e 16 17  LacticAcid__CRP
e 15 16  LacticAcid__LacticAcid
e 18 19  Leucocytes__Leucocytes
e 19 20  Leucocytes__CRP
e 20 21  CRP__LacticAcid
e 21 22  LacticAcid__Leucocytes
e 22 23  Leucocytes__LacticAcid
e 23 24  LacticAcid__CRP
e 24 25  CRP__LacticAcid
e 25 26  LacticAcid__Leucocytes
e 27 28  CRP__AdmissionNC
e 28 29  AdmissionNC__Leucocytes
e 31 32  Leucocytes__Leucocytes
e 32 33  Leucocytes__CRP
e 36 37  Leucocytes__ReleaseA
e 37 38  ReleaseA__END


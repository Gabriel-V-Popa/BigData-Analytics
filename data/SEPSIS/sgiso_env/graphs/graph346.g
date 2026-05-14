v 1 START
v 2 ERRegistration
v 3 ERSepsisTriage
v 4 ERTriage
v 5 CRP
v 6 Leucocytes
v 7 LacticAcid
v 8 LacticAcid
v 9 IVLiquid
v 10 IVAntibiotics
v 11 AdmissionIC
v 12 LacticAcid
v 13 Leucocytes
v 14 CRP
v 15 LacticAcid
v 16 CRP
v 17 LacticAcid
v 18 Leucocytes
v 19 AdmissionNC
v 20 Leucocytes
v 21 CRP
v 22 Leucocytes
v 23 Leucocytes
v 24 CRP
v 25 Leucocytes
v 26 CRP
v 27 Leucocytes
v 28 CRP
v 29 Leucocytes
v 30 CRP
v 31 Leucocytes
v 32 CRP
v 33 Leucocytes
v 34 Leucocytes
v 35 CRP
v 36 Leucocytes
v 37 CRP
v 38 ReleaseA
v 39 END
e 1 2  START__ERRegistration
e 4 5  ERTriage__CRP
e 5 6  CRP__Leucocytes
e 10 11  IVAntibiotics__AdmissionIC
e 10 12  IVAntibiotics__LacticAcid
e 11 13  AdmissionIC__Leucocytes
e 12 13  LacticAcid__Leucocytes
e 13 14  Leucocytes__CRP
e 18 19  Leucocytes__AdmissionNC
e 21 22  CRP__Leucocytes
e 24 25  CRP__Leucocytes
e 25 26  Leucocytes__CRP
e 26 27  CRP__Leucocytes
e 27 28  Leucocytes__CRP
e 28 29  CRP__Leucocytes
e 29 30  Leucocytes__CRP
e 30 31  CRP__Leucocytes
e 31 32  Leucocytes__CRP
e 32 33  CRP__Leucocytes
e 35 36  CRP__Leucocytes
e 2 3  ERRegistration__ERSepsisTriage
e 3 4  ERSepsisTriage__ERTriage
e 6 7  Leucocytes__LacticAcid
e 9 10  IVLiquid__IVAntibiotics
e 7 8  LacticAcid__LacticAcid
e 8 9  LacticAcid__IVLiquid
e 14 15  CRP__LacticAcid
e 17 18  LacticAcid__Leucocytes
e 15 16  LacticAcid__CRP
e 16 17  CRP__LacticAcid
e 19 20  AdmissionNC__Leucocytes
e 20 21  Leucocytes__CRP
e 22 23  Leucocytes__Leucocytes
e 23 24  Leucocytes__CRP
e 33 34  Leucocytes__Leucocytes
e 34 35  Leucocytes__CRP
e 36 37  Leucocytes__CRP
e 38 39  ReleaseA__END
e 37 38  CRP__ReleaseA


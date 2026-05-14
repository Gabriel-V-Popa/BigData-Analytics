v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 LacticAcid
v 7 CRP
v 8 IVAntibiotics
v 9 IVLiquid
v 10 AdmissionIC
v 11 CRP
v 12 LacticAcid
v 13 Leucocytes
v 14 LacticAcid
v 15 Leucocytes
v 16 LacticAcid
v 17 CRP
v 18 Leucocytes
v 19 LacticAcid
v 20 LacticAcid
v 21 Leucocytes
v 22 CRP
v 23 LacticAcid
v 24 AdmissionNC
v 25 Leucocytes
v 26 CRP
v 27 CRP
v 28 CRP
v 29 CRP
v 30 Leucocytes
v 31 CRP
v 32 Leucocytes
v 33 CRP
v 34 Leucocytes
v 35 CRP
v 36 Leucocytes
v 37 CRP
v 38 Leucocytes
v 39 AdmissionNC
v 40 ReleaseA
v 41 ReturnER
v 42 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 12 13  LacticAcid__Leucocytes
e 14 15  LacticAcid__Leucocytes
e 17 18  CRP__Leucocytes
e 21 22  Leucocytes__CRP
e 25 26  Leucocytes__CRP
e 30 31  Leucocytes__CRP
e 31 32  CRP__Leucocytes
e 32 33  Leucocytes__CRP
e 33 34  CRP__Leucocytes
e 34 35  Leucocytes__CRP
e 35 36  CRP__Leucocytes
e 36 37  Leucocytes__CRP
e 37 38  CRP__Leucocytes
e 38 39  Leucocytes__AdmissionNC
e 39 40  AdmissionNC__ReleaseA
e 40 41  ReleaseA__ReturnER
e 41 42  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 13 14  Leucocytes__LacticAcid
e 18 19  Leucocytes__LacticAcid
e 5 6  Leucocytes__LacticAcid
e 7 8  CRP__IVAntibiotics
e 6 7  LacticAcid__CRP
e 8 9  IVAntibiotics__IVLiquid
e 9 10  IVLiquid__AdmissionIC
e 9 12  IVLiquid__LacticAcid
e 11 13  CRP__Leucocytes
e 10 11  AdmissionIC__CRP
e 15 16  Leucocytes__LacticAcid
e 16 17  LacticAcid__CRP
e 19 20  LacticAcid__LacticAcid
e 20 21  LacticAcid__Leucocytes
e 22 23  CRP__LacticAcid
e 24 25  AdmissionNC__Leucocytes
e 23 24  LacticAcid__AdmissionNC
e 26 27  CRP__CRP
e 29 30  CRP__Leucocytes
e 27 28  CRP__CRP
e 28 29  CRP__CRP


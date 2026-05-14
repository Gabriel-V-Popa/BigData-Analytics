v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 LacticAcid
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 CRP
v 12 AdmissionIC
v 13 CRP
v 14 Leucocytes
v 15 LacticAcid
v 16 LacticAcid
v 17 Leucocytes
v 18 CRP
v 19 Leucocytes
v 20 LacticAcid
v 21 CRP
v 22 CRP
v 23 Leucocytes
v 24 LacticAcid
v 25 LacticAcid
v 26 CRP
v 27 Leucocytes
v 28 AdmissionNC
v 29 Leucocytes
v 30 CRP
v 31 AdmissionNC
v 32 Leucocytes
v 33 CRP
v 34 CRP
v 35 Leucocytes
v 36 ReleaseD
v 37 ReturnER
v 38 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 17 18  Leucocytes__CRP
e 18 19  CRP__Leucocytes
e 26 27  CRP__Leucocytes
e 27 28  Leucocytes__AdmissionNC
e 32 33  Leucocytes__CRP
e 35 36  Leucocytes__ReleaseD
e 36 37  ReleaseD__ReturnER
e 37 38  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__CRP
e 8 9  IVLiquid__IVAntibiotics
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__IVLiquid
e 9 10  IVAntibiotics__AdmissionNC
e 11 12  CRP__AdmissionIC
e 11 15  CRP__LacticAcid
e 10 11  AdmissionNC__CRP
e 12 13  AdmissionIC__CRP
e 13 14  CRP__Leucocytes
e 15 16  LacticAcid__LacticAcid
e 14 16  Leucocytes__LacticAcid
e 16 17  LacticAcid__Leucocytes
e 19 20  Leucocytes__LacticAcid
e 20 21  LacticAcid__CRP
e 21 22  CRP__CRP
e 22 23  CRP__Leucocytes
e 23 24  Leucocytes__LacticAcid
e 25 26  LacticAcid__CRP
e 24 25  LacticAcid__LacticAcid
e 28 29  AdmissionNC__Leucocytes
e 29 30  Leucocytes__CRP
e 30 31  CRP__AdmissionNC
e 31 32  AdmissionNC__Leucocytes
e 33 34  CRP__CRP
e 34 35  CRP__Leucocytes


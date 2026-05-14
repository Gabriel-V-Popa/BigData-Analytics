v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 LacticAcid
v 6 CRP
v 7 Leucocytes
v 8 IVLiquid
v 9 IVAntibiotics
v 10 CRP
v 11 LacticAcid
v 12 Leucocytes
v 13 AdmissionIC
v 14 LacticAcid
v 15 Leucocytes
v 16 CRP
v 17 Leucocytes
v 18 CRP
v 19 LacticAcid
v 20 Leucocytes
v 21 CRP
v 22 LacticAcid
v 23 LacticAcid
v 24 Leucocytes
v 25 CRP
v 26 CRP
v 27 LacticAcid
v 28 Leucocytes
v 29 Leucocytes
v 30 CRP
v 31 LacticAcid
v 32 Leucocytes
v 33 CRP
v 34 LacticAcid
v 35 AdmissionNC
v 36 Leucocytes
v 37 Leucocytes
v 38 CRP
v 39 Leucocytes
v 40 Leucocytes
v 41 CRP
v 42 Leucocytes
v 43 Leucocytes
v 44 CRP
v 45 ReleaseD
v 46 ReturnER
v 47 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  CRP__Leucocytes
e 11 12  LacticAcid__Leucocytes
e 13 15  AdmissionIC__Leucocytes
e 14 15  LacticAcid__Leucocytes
e 15 16  Leucocytes__CRP
e 16 17  CRP__Leucocytes
e 17 18  Leucocytes__CRP
e 20 21  Leucocytes__CRP
e 24 25  Leucocytes__CRP
e 32 33  Leucocytes__CRP
e 38 39  CRP__Leucocytes
e 41 42  CRP__Leucocytes
e 45 46  ReleaseD__ReturnER
e 46 47  ReturnER__END
e 12 13  Leucocytes__AdmissionIC
e 12 14  Leucocytes__LacticAcid
e 3 4  ERTriage__ERSepsisTriage
e 5 6  LacticAcid__CRP
e 4 5  ERSepsisTriage__LacticAcid
e 7 8  Leucocytes__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 9 10  IVAntibiotics__CRP
e 10 11  CRP__LacticAcid
e 18 19  CRP__LacticAcid
e 19 20  LacticAcid__Leucocytes
e 21 22  CRP__LacticAcid
e 23 24  LacticAcid__Leucocytes
e 22 23  LacticAcid__LacticAcid
e 25 26  CRP__CRP
e 27 28  LacticAcid__Leucocytes
e 26 27  CRP__LacticAcid
e 28 29  Leucocytes__Leucocytes
e 29 30  Leucocytes__CRP
e 30 31  CRP__LacticAcid
e 31 32  LacticAcid__Leucocytes
e 33 34  CRP__LacticAcid
e 35 36  AdmissionNC__Leucocytes
e 34 35  LacticAcid__AdmissionNC
e 36 37  Leucocytes__Leucocytes
e 37 38  Leucocytes__CRP
e 39 40  Leucocytes__Leucocytes
e 40 41  Leucocytes__CRP
e 42 43  Leucocytes__Leucocytes
e 44 45  CRP__ReleaseD
e 43 44  Leucocytes__CRP


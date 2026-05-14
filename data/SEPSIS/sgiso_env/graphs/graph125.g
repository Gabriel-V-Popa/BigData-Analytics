v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 LacticAcid
v 7 Leucocytes
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 LacticAcid
v 12 Leucocytes
v 13 CRP
v 14 AdmissionNC
v 15 Leucocytes
v 16 CRP
v 17 CRP
v 18 Leucocytes
v 19 Leucocytes
v 20 CRP
v 21 CRP
v 22 Leucocytes
v 23 CRP
v 24 CRP
v 25 CRP
v 26 Leucocytes
v 27 CRP
v 28 Leucocytes
v 29 CRP
v 30 CRP
v 31 ReleaseD
v 32 ReturnER
v 33 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 11 12  LacticAcid__Leucocytes
e 12 13  Leucocytes__CRP
e 15 16  Leucocytes__CRP
e 22 23  Leucocytes__CRP
e 26 27  Leucocytes__CRP
e 27 28  CRP__Leucocytes
e 31 32  ReleaseD__ReturnER
e 32 33  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 5 6  CRP__LacticAcid
e 6 7  LacticAcid__Leucocytes
e 7 8  Leucocytes__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__LacticAcid
e 13 14  CRP__AdmissionNC
e 14 15  AdmissionNC__Leucocytes
e 16 17  CRP__CRP
e 17 18  CRP__Leucocytes
e 18 19  Leucocytes__Leucocytes
e 19 20  Leucocytes__CRP
e 20 21  CRP__CRP
e 21 22  CRP__Leucocytes
e 23 24  CRP__CRP
e 25 26  CRP__Leucocytes
e 24 25  CRP__CRP
e 28 29  Leucocytes__CRP
e 30 31  CRP__ReleaseD
e 29 30  CRP__CRP


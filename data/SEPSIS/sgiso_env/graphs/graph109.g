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
v 11 Leucocytes
v 12 AdmissionNC
v 13 Leucocytes
v 14 Leucocytes
v 15 CRP
v 16 CRP
v 17 CRP
v 18 Leucocytes
v 19 Leucocytes
v 20 Leucocytes
v 21 Leucocytes
v 22 Leucocytes
v 23 CRP
v 24 AdmissionNC
v 25 AdmissionNC
v 26 Leucocytes
v 27 Leucocytes
v 28 CRP
v 29 CRP
v 30 Leucocytes
v 31 CRP
v 32 Leucocytes
v 33 ReleaseA
v 34 ReturnER
v 35 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 5 6  Leucocytes__CRP
e 11 12  Leucocytes__AdmissionNC
e 30 31  Leucocytes__CRP
e 31 32  CRP__Leucocytes
e 32 33  Leucocytes__ReleaseA
e 33 34  ReleaseA__ReturnER
e 34 35  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 6 7  CRP__LacticAcid
e 10 11  AdmissionNC__Leucocytes
e 7 8  LacticAcid__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 12 13  AdmissionNC__Leucocytes
e 14 15  Leucocytes__CRP
e 13 14  Leucocytes__Leucocytes
e 15 16  CRP__CRP
e 17 18  CRP__Leucocytes
e 16 17  CRP__CRP
e 18 19  Leucocytes__Leucocytes
e 22 23  Leucocytes__CRP
e 19 20  Leucocytes__Leucocytes
e 20 21  Leucocytes__Leucocytes
e 21 22  Leucocytes__Leucocytes
e 23 24  CRP__AdmissionNC
e 25 26  AdmissionNC__Leucocytes
e 24 25  AdmissionNC__AdmissionNC
e 26 27  Leucocytes__Leucocytes
e 27 28  Leucocytes__CRP
e 28 29  CRP__CRP
e 29 30  CRP__Leucocytes


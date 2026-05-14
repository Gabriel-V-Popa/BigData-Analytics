v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 LacticAcid
v 5 CRP
v 6 Leucocytes
v 7 ERSepsisTriage
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 CRP
v 12 Leucocytes
v 13 Leucocytes
v 14 CRP
v 15 AdmissionNC
v 16 Leucocytes
v 17 CRP
v 18 Leucocytes
v 19 Leucocytes
v 20 CRP
v 21 Leucocytes
v 22 CRP
v 23 Leucocytes
v 24 CRP
v 25 Leucocytes
v 26 CRP
v 27 CRP
v 28 Leucocytes
v 29 CRP
v 30 Leucocytes
v 31 CRP
v 32 ReleaseC
v 33 ReturnER
v 34 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 11 12  CRP__Leucocytes
e 16 17  Leucocytes__CRP
e 17 18  CRP__Leucocytes
e 20 21  CRP__Leucocytes
e 21 22  Leucocytes__CRP
e 22 23  CRP__Leucocytes
e 23 24  Leucocytes__CRP
e 24 25  CRP__Leucocytes
e 25 26  Leucocytes__CRP
e 28 29  Leucocytes__CRP
e 29 30  CRP__Leucocytes
e 32 33  ReleaseC__ReturnER
e 33 34  ReturnER__END
e 3 4  ERTriage__LacticAcid
e 4 5  LacticAcid__CRP
e 6 7  Leucocytes__ERSepsisTriage
e 7 8  ERSepsisTriage__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 10 11  AdmissionNC__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 12 13  Leucocytes__Leucocytes
e 13 14  Leucocytes__CRP
e 14 15  CRP__AdmissionNC
e 15 16  AdmissionNC__Leucocytes
e 18 19  Leucocytes__Leucocytes
e 19 20  Leucocytes__CRP
e 26 27  CRP__CRP
e 27 28  CRP__Leucocytes
e 30 31  Leucocytes__CRP
e 31 32  CRP__ReleaseC


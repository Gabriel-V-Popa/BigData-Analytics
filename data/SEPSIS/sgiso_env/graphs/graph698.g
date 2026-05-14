v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 Leucocytes
v 7 LacticAcid
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 CRP
v 12 Leucocytes
v 13 LacticAcid
v 14 Leucocytes
v 15 CRP
v 16 Leucocytes
v 17 CRP
v 18 Leucocytes
v 19 CRP
v 20 CRP
v 21 Leucocytes
v 22 CRP
v 23 Leucocytes
v 24 ReleaseC
v 25 ReturnER
v 26 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 11 12  CRP__Leucocytes
e 13 14  LacticAcid__Leucocytes
e 14 15  Leucocytes__CRP
e 15 16  CRP__Leucocytes
e 16 17  Leucocytes__CRP
e 17 18  CRP__Leucocytes
e 18 19  Leucocytes__CRP
e 21 22  Leucocytes__CRP
e 22 23  CRP__Leucocytes
e 23 24  Leucocytes__ReleaseC
e 24 25  ReleaseC__ReturnER
e 25 26  ReturnER__END
e 12 13  Leucocytes__LacticAcid
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 6 7  Leucocytes__LacticAcid
e 7 8  LacticAcid__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 10 11  AdmissionNC__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 19 20  CRP__CRP
e 20 21  CRP__Leucocytes


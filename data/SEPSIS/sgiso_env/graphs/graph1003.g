v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 LacticAcid
v 6 Leucocytes
v 7 CRP
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 AdmissionNC
v 12 CRP
v 13 Leucocytes
v 14 Leucocytes
v 15 CRP
v 16 Leucocytes
v 17 CRP
v 18 Leucocytes
v 19 CRP
v 20 CRP
v 21 Leucocytes
v 22 CRP
v 23 CRP
v 24 Leucocytes
v 25 ReleaseA
v 26 ReturnER
v 27 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 12 13  CRP__Leucocytes
e 15 16  CRP__Leucocytes
e 16 17  Leucocytes__CRP
e 17 18  CRP__Leucocytes
e 18 19  Leucocytes__CRP
e 21 22  Leucocytes__CRP
e 24 25  Leucocytes__ReleaseA
e 25 26  ReleaseA__ReturnER
e 26 27  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__LacticAcid
e 5 6  LacticAcid__Leucocytes
e 6 7  Leucocytes__CRP
e 7 8  CRP__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 11 12  AdmissionNC__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__AdmissionNC
e 13 14  Leucocytes__Leucocytes
e 14 15  Leucocytes__CRP
e 19 20  CRP__CRP
e 20 21  CRP__Leucocytes
e 22 23  CRP__CRP
e 23 24  CRP__Leucocytes


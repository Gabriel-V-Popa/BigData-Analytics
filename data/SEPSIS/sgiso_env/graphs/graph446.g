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
v 11 AdmissionNC
v 12 CRP
v 13 Leucocytes
v 14 Leucocytes
v 15 CRP
v 16 Leucocytes
v 17 Leucocytes
v 18 CRP
v 19 CRP
v 20 Leucocytes
v 21 CRP
v 22 Leucocytes
v 23 Leucocytes
v 24 Leucocytes
v 25 CRP
v 26 Leucocytes
v 27 CRP
v 28 CRP
v 29 Leucocytes
v 30 ReleaseA
v 31 ReturnER
v 32 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 12 13  CRP__Leucocytes
e 15 16  CRP__Leucocytes
e 20 21  Leucocytes__CRP
e 21 22  CRP__Leucocytes
e 25 26  CRP__Leucocytes
e 26 27  Leucocytes__CRP
e 29 30  Leucocytes__ReleaseA
e 30 31  ReleaseA__ReturnER
e 31 32  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__CRP
e 7 8  LacticAcid__IVLiquid
e 6 7  CRP__LacticAcid
e 8 9  IVLiquid__IVAntibiotics
e 11 12  AdmissionNC__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__AdmissionNC
e 13 14  Leucocytes__Leucocytes
e 14 15  Leucocytes__CRP
e 16 17  Leucocytes__Leucocytes
e 17 18  Leucocytes__CRP
e 18 19  CRP__CRP
e 19 20  CRP__Leucocytes
e 22 23  Leucocytes__Leucocytes
e 24 25  Leucocytes__CRP
e 23 24  Leucocytes__Leucocytes
e 27 28  CRP__CRP
e 28 29  CRP__Leucocytes


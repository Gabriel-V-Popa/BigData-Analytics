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
v 12 CRP
v 13 Leucocytes
v 14 CRP
v 15 CRP
v 16 Leucocytes
v 17 Leucocytes
v 18 CRP
v 19 Leucocytes
v 20 CRP
v 21 Leucocytes
v 22 CRP
v 23 ReleaseA
v 24 Leucocytes
v 25 ReturnER
v 26 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 5 6  Leucocytes__CRP
e 11 12  Leucocytes__CRP
e 12 13  CRP__Leucocytes
e 13 14  Leucocytes__CRP
e 18 19  CRP__Leucocytes
e 19 20  Leucocytes__CRP
e 20 21  CRP__Leucocytes
e 25 26  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 6 7  CRP__LacticAcid
e 10 11  AdmissionNC__Leucocytes
e 7 8  LacticAcid__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 14 15  CRP__CRP
e 15 16  CRP__Leucocytes
e 16 17  Leucocytes__Leucocytes
e 17 18  Leucocytes__CRP
e 21 22  Leucocytes__CRP
e 22 23  CRP__ReleaseA
e 23 24  ReleaseA__Leucocytes
e 24 25  Leucocytes__ReturnER


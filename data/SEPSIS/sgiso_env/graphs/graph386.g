v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 LacticAcid
v 7 CRP
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 Leucocytes
v 12 CRP
v 13 CRP
v 14 Leucocytes
v 15 Leucocytes
v 16 Leucocytes
v 17 CRP
v 18 Leucocytes
v 19 CRP
v 20 Leucocytes
v 21 Leucocytes
v 22 CRP
v 23 ReleaseD
v 24 ReturnER
v 25 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 11 12  Leucocytes__CRP
e 17 18  CRP__Leucocytes
e 18 19  Leucocytes__CRP
e 19 20  CRP__Leucocytes
e 23 24  ReleaseD__ReturnER
e 24 25  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__LacticAcid
e 6 7  LacticAcid__CRP
e 7 8  CRP__IVLiquid
e 10 11  AdmissionNC__Leucocytes
e 8 9  IVLiquid__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 12 13  CRP__CRP
e 13 14  CRP__Leucocytes
e 14 15  Leucocytes__Leucocytes
e 16 17  Leucocytes__CRP
e 15 16  Leucocytes__Leucocytes
e 20 21  Leucocytes__Leucocytes
e 22 23  CRP__ReleaseD
e 21 22  Leucocytes__CRP


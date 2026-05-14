v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 CRP
v 5 LacticAcid
v 6 Leucocytes
v 7 ERSepsisTriage
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 AdmissionNC
v 12 Leucocytes
v 13 CRP
v 14 CRP
v 15 Leucocytes
v 16 CRP
v 17 Leucocytes
v 18 Leucocytes
v 19 CRP
v 20 ReleaseD
v 21 ReturnER
v 22 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__CRP
e 15 16  Leucocytes__CRP
e 16 17  CRP__Leucocytes
e 20 21  ReleaseD__ReturnER
e 21 22  ReturnER__END
e 4 5  CRP__LacticAcid
e 5 6  LacticAcid__Leucocytes
e 6 7  Leucocytes__ERSepsisTriage
e 7 8  ERSepsisTriage__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 12 13  Leucocytes__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__AdmissionNC
e 11 12  AdmissionNC__Leucocytes
e 13 14  CRP__CRP
e 14 15  CRP__Leucocytes
e 17 18  Leucocytes__Leucocytes
e 19 20  CRP__ReleaseD
e 18 19  Leucocytes__CRP


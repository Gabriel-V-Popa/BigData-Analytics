v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 CRP
v 5 Leucocytes
v 6 LacticAcid
v 7 ERSepsisTriage
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 CRP
v 12 Leucocytes
v 13 Leucocytes
v 14 CRP
v 15 CRP
v 16 Leucocytes
v 17 ReleaseA
v 18 ReturnER
v 19 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__CRP
e 4 5  CRP__Leucocytes
e 11 12  CRP__Leucocytes
e 16 17  Leucocytes__ReleaseA
e 17 18  ReleaseA__ReturnER
e 18 19  ReturnER__END
e 5 6  Leucocytes__LacticAcid
e 7 8  ERSepsisTriage__IVLiquid
e 6 7  LacticAcid__ERSepsisTriage
e 8 9  IVLiquid__IVAntibiotics
e 10 11  AdmissionNC__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 12 13  Leucocytes__Leucocytes
e 13 14  Leucocytes__CRP
e 14 15  CRP__CRP
e 15 16  CRP__Leucocytes


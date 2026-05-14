v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 LacticAcid
v 7 CRP
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 IVLiquid
v 11 Leucocytes
v 12 CRP
v 13 Leucocytes
v 14 CRP
v 15 Leucocytes
v 16 ReleaseA
v 17 ReturnER
v 18 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 9 10  AdmissionNC__IVLiquid
e 12 13  CRP__Leucocytes
e 13 14  Leucocytes__CRP
e 14 15  CRP__Leucocytes
e 15 16  Leucocytes__ReleaseA
e 16 17  ReleaseA__ReturnER
e 17 18  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__LacticAcid
e 8 9  IVAntibiotics__AdmissionNC
e 6 7  LacticAcid__CRP
e 7 8  CRP__IVAntibiotics
e 10 11  IVLiquid__Leucocytes
e 11 12  Leucocytes__CRP


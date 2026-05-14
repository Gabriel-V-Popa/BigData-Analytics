v 1 START
v 2 ERRegistration
v 3 IVLiquid
v 4 ERTriage
v 5 ERSepsisTriage
v 6 IVAntibiotics
v 7 Leucocytes
v 8 LacticAcid
v 9 CRP
v 10 AdmissionNC
v 11 Leucocytes
v 12 LacticAcid
v 13 CRP
v 14 Leucocytes
v 15 CRP
v 16 ReleaseA
v 17 ReturnER
v 18 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__IVLiquid
e 13 14  CRP__Leucocytes
e 16 17  ReleaseA__ReturnER
e 17 18  ReturnER__END
e 3 4  IVLiquid__ERTriage
e 4 5  ERTriage__ERSepsisTriage
e 5 6  ERSepsisTriage__IVAntibiotics
e 6 7  IVAntibiotics__Leucocytes
e 7 8  Leucocytes__LacticAcid
e 8 9  LacticAcid__CRP
e 9 10  CRP__AdmissionNC
e 10 11  AdmissionNC__Leucocytes
e 11 12  Leucocytes__LacticAcid
e 12 13  LacticAcid__CRP
e 14 15  Leucocytes__CRP
e 15 16  CRP__ReleaseA


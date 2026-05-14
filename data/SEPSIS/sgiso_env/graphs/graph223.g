v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 Leucocytes
v 7 LacticAcid
v 8 IVAntibiotics
v 9 IVLiquid
v 10 AdmissionNC
v 11 Leucocytes
v 12 CRP
v 13 AdmissionNC
v 14 Leucocytes
v 15 CRP
v 16 ReleaseA
v 17 ReturnER
v 18 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 16 17  ReleaseA__ReturnER
e 17 18  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 6 7  Leucocytes__LacticAcid
e 8 9  IVAntibiotics__IVLiquid
e 7 8  LacticAcid__IVAntibiotics
e 9 10  IVLiquid__AdmissionNC
e 11 12  Leucocytes__CRP
e 10 11  AdmissionNC__Leucocytes
e 12 13  CRP__AdmissionNC
e 13 14  AdmissionNC__Leucocytes
e 14 15  Leucocytes__CRP
e 15 16  CRP__ReleaseA


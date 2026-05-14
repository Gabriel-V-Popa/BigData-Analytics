v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 LacticAcid
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 IVLiquid
v 11 Leucocytes
v 12 CRP
v 13 CRP
v 14 Leucocytes
v 15 AdmissionNC
v 16 AdmissionNC
v 17 ReleaseA
v 18 ReturnER
v 19 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 9 10  AdmissionNC__IVLiquid
e 14 15  Leucocytes__AdmissionNC
e 17 18  ReleaseA__ReturnER
e 18 19  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__CRP
e 8 9  IVAntibiotics__AdmissionNC
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__IVAntibiotics
e 10 11  IVLiquid__Leucocytes
e 11 12  Leucocytes__CRP
e 12 13  CRP__CRP
e 13 14  CRP__Leucocytes
e 15 16  AdmissionNC__AdmissionNC
e 16 17  AdmissionNC__ReleaseA


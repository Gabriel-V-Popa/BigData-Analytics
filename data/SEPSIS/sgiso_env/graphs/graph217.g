v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 LacticAcid
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 AdmissionNC
v 11 IVLiquid
v 12 CRP
v 13 Leucocytes
v 14 AdmissionNC
v 15 Leucocytes
v 16 CRP
v 17 ReleaseA
v 18 ReturnER
v 19 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 11 12  IVLiquid__CRP
e 12 13  CRP__Leucocytes
e 13 14  Leucocytes__AdmissionNC
e 17 18  ReleaseA__ReturnER
e 18 19  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__CRP
e 8 9  IVAntibiotics__AdmissionNC
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__IVAntibiotics
e 9 10  AdmissionNC__AdmissionNC
e 10 11  AdmissionNC__IVLiquid
e 14 15  AdmissionNC__Leucocytes
e 16 17  CRP__ReleaseA
e 15 16  Leucocytes__CRP


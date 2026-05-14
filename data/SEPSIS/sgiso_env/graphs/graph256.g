v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 IVAntibiotics
v 7 LacticAcid
v 8 CRP
v 9 Leucocytes
v 10 AdmissionNC
v 11 AdmissionNC
v 12 Leucocytes
v 13 CRP
v 14 CRP
v 15 CRP
v 16 Leucocytes
v 17 CRP
v 18 ReleaseA
v 19 ReturnER
v 20 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 8 9  CRP__Leucocytes
e 9 10  Leucocytes__AdmissionNC
e 18 19  ReleaseA__ReturnER
e 19 20  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 7 8  LacticAcid__CRP
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__IVAntibiotics
e 6 7  IVAntibiotics__LacticAcid
e 10 11  AdmissionNC__AdmissionNC
e 12 13  Leucocytes__CRP
e 11 12  AdmissionNC__Leucocytes
e 13 14  CRP__CRP
e 15 16  CRP__Leucocytes
e 14 15  CRP__CRP
e 16 17  Leucocytes__CRP
e 17 18  CRP__ReleaseA


v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 IVLiquid
v 5 ERSepsisTriage
v 6 LacticAcid
v 7 CRP
v 8 Leucocytes
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 AdmissionNC
v 12 Leucocytes
v 13 CRP
v 14 Leucocytes
v 15 CRP
v 16 Leucocytes
v 17 CRP
v 18 ReleaseA
v 19 ReturnER
v 20 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 7 8  CRP__Leucocytes
e 13 14  CRP__Leucocytes
e 14 15  Leucocytes__CRP
e 15 16  CRP__Leucocytes
e 18 19  ReleaseA__ReturnER
e 19 20  ReturnER__END
e 3 4  ERTriage__IVLiquid
e 6 7  LacticAcid__CRP
e 4 5  IVLiquid__ERSepsisTriage
e 5 6  ERSepsisTriage__LacticAcid
e 8 9  Leucocytes__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__AdmissionNC
e 12 13  Leucocytes__CRP
e 11 12  AdmissionNC__Leucocytes
e 16 17  Leucocytes__CRP
e 17 18  CRP__ReleaseA


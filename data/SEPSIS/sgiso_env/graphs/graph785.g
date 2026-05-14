v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 LacticAcid
v 7 Leucocytes
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 Leucocytes
v 11 CRP
v 12 AdmissionNC
v 13 IVLiquid
v 14 CRP
v 15 Leucocytes
v 16 Leucocytes
v 17 CRP
v 18 ReleaseA
v 19 ReturnER
v 20 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 7 8  Leucocytes__IVAntibiotics
e 12 13  AdmissionNC__IVLiquid
e 13 14  IVLiquid__CRP
e 14 15  CRP__Leucocytes
e 18 19  ReleaseA__ReturnER
e 19 20  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 5 6  CRP__LacticAcid
e 6 7  LacticAcid__Leucocytes
e 8 9  IVAntibiotics__AdmissionNC
e 9 10  AdmissionNC__Leucocytes
e 10 11  Leucocytes__CRP
e 11 12  CRP__AdmissionNC
e 15 16  Leucocytes__Leucocytes
e 17 18  CRP__ReleaseA
e 16 17  Leucocytes__CRP


v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 LacticAcid
v 5 CRP
v 6 Leucocytes
v 7 ERSepsisTriage
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 Leucocytes
v 12 CRP
v 13 LacticAcid
v 14 CRP
v 15 Leucocytes
v 16 Leucocytes
v 17 CRP
v 18 ReleaseA
v 19 ReturnER
v 20 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 18 19  ReleaseA__ReturnER
e 19 20  ReturnER__END
e 3 4  ERTriage__LacticAcid
e 4 5  LacticAcid__CRP
e 6 7  Leucocytes__ERSepsisTriage
e 8 9  IVLiquid__IVAntibiotics
e 7 8  ERSepsisTriage__IVLiquid
e 9 10  IVAntibiotics__AdmissionNC
e 12 13  CRP__LacticAcid
e 10 11  AdmissionNC__Leucocytes
e 11 12  Leucocytes__CRP
e 13 14  LacticAcid__CRP
e 14 15  CRP__Leucocytes
e 15 16  Leucocytes__Leucocytes
e 17 18  CRP__ReleaseA
e 16 17  Leucocytes__CRP


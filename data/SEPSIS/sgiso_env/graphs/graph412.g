v 1 START
v 2 IVLiquid
v 3 ERRegistration
v 4 ERTriage
v 5 ERSepsisTriage
v 6 Leucocytes
v 7 CRP
v 8 LacticAcid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 Leucocytes
v 12 CRP
v 13 LacticAcid
v 14 CRP
v 15 Leucocytes
v 16 CRP
v 17 Leucocytes
v 18 ReleaseA
v 19 ReturnER
v 20 END
e 3 4  ERRegistration__ERTriage
e 5 6  ERSepsisTriage__Leucocytes
e 6 7  Leucocytes__CRP
e 11 12  Leucocytes__CRP
e 15 16  Leucocytes__CRP
e 16 17  CRP__Leucocytes
e 17 18  Leucocytes__ReleaseA
e 18 19  ReleaseA__ReturnER
e 19 20  ReturnER__END
e 4 5  ERTriage__ERSepsisTriage
e 1 2  START__IVLiquid
e 2 3  IVLiquid__ERRegistration
e 7 8  CRP__LacticAcid
e 10 11  AdmissionNC__Leucocytes
e 8 9  LacticAcid__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 12 13  CRP__LacticAcid
e 14 15  CRP__Leucocytes
e 13 14  LacticAcid__CRP


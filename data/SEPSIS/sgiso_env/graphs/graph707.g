v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 LacticAcid
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 Leucocytes
v 11 CRP
v 12 LacticAcid
v 13 AdmissionNC
v 14 IVLiquid
v 15 CRP
v 16 Leucocytes
v 17 ReleaseA
v 18 ReturnER
v 19 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 5 6  Leucocytes__CRP
e 13 14  AdmissionNC__IVLiquid
e 14 15  IVLiquid__CRP
e 15 16  CRP__Leucocytes
e 16 17  Leucocytes__ReleaseA
e 17 18  ReleaseA__ReturnER
e 18 19  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 6 7  CRP__LacticAcid
e 9 10  AdmissionNC__Leucocytes
e 7 8  LacticAcid__IVAntibiotics
e 8 9  IVAntibiotics__AdmissionNC
e 10 11  Leucocytes__CRP
e 12 13  LacticAcid__AdmissionNC
e 11 12  CRP__LacticAcid


v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 LacticAcid
v 8 LacticAcid
v 9 IVLiquid
v 10 IVAntibiotics
v 11 AdmissionNC
v 12 Leucocytes
v 13 CRP
v 14 AdmissionNC
v 15 CRP
v 16 Leucocytes
v 17 CRP
v 18 Leucocytes
v 19 ReleaseA
v 20 ReturnER
v 21 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 5 6  Leucocytes__CRP
e 14 15  AdmissionNC__CRP
e 15 16  CRP__Leucocytes
e 16 17  Leucocytes__CRP
e 17 18  CRP__Leucocytes
e 18 19  Leucocytes__ReleaseA
e 19 20  ReleaseA__ReturnER
e 20 21  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 6 7  CRP__LacticAcid
e 11 12  AdmissionNC__Leucocytes
e 7 8  LacticAcid__LacticAcid
e 8 9  LacticAcid__IVLiquid
e 9 10  IVLiquid__IVAntibiotics
e 10 11  IVAntibiotics__AdmissionNC
e 12 13  Leucocytes__CRP
e 13 14  CRP__AdmissionNC


v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 LacticAcid
v 5 Leucocytes
v 6 CRP
v 7 ERSepsisTriage
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 LacticAcid
v 12 CRP
v 13 Leucocytes
v 14 AdmissionNC
v 15 Leucocytes
v 16 CRP
v 17 CRP
v 18 Leucocytes
v 19 ReleaseA
v 20 ReturnER
v 21 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  CRP__ERSepsisTriage
e 13 14  Leucocytes__AdmissionNC
e 18 19  Leucocytes__ReleaseA
e 19 20  ReleaseA__ReturnER
e 20 21  ReturnER__END
e 3 4  ERTriage__LacticAcid
e 5 6  Leucocytes__CRP
e 4 5  LacticAcid__Leucocytes
e 7 8  ERSepsisTriage__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__LacticAcid
e 11 12  LacticAcid__CRP
e 12 13  CRP__Leucocytes
e 14 15  AdmissionNC__Leucocytes
e 15 16  Leucocytes__CRP
e 16 17  CRP__CRP
e 17 18  CRP__Leucocytes


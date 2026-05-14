v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 Leucocytes
v 7 LacticAcid
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 Leucocytes
v 12 LacticAcid
v 13 CRP
v 14 AdmissionNC
v 15 CRP
v 16 Leucocytes
v 17 Leucocytes
v 18 CRP
v 19 ReleaseA
v 20 ReturnER
v 21 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 14 15  AdmissionNC__CRP
e 15 16  CRP__Leucocytes
e 19 20  ReleaseA__ReturnER
e 20 21  ReturnER__END
e 6 7  Leucocytes__LacticAcid
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 7 8  LacticAcid__IVLiquid
e 10 11  AdmissionNC__Leucocytes
e 8 9  IVLiquid__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 11 12  Leucocytes__LacticAcid
e 13 14  CRP__AdmissionNC
e 12 13  LacticAcid__CRP
e 16 17  Leucocytes__Leucocytes
e 18 19  CRP__ReleaseA
e 17 18  Leucocytes__CRP


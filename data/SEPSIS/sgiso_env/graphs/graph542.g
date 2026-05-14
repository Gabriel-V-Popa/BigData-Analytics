v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 CRP
v 5 LacticAcid
v 6 Leucocytes
v 7 ERSepsisTriage
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 Leucocytes
v 12 CRP
v 13 Leucocytes
v 14 Leucocytes
v 15 CRP
v 16 Leucocytes
v 17 AdmissionNC
v 18 ReleaseA
v 19 ReturnER
v 20 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__CRP
e 12 13  CRP__Leucocytes
e 15 16  CRP__Leucocytes
e 16 17  Leucocytes__AdmissionNC
e 17 18  AdmissionNC__ReleaseA
e 18 19  ReleaseA__ReturnER
e 19 20  ReturnER__END
e 4 5  CRP__LacticAcid
e 5 6  LacticAcid__Leucocytes
e 6 7  Leucocytes__ERSepsisTriage
e 7 8  ERSepsisTriage__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 11 12  Leucocytes__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__Leucocytes
e 13 14  Leucocytes__Leucocytes
e 14 15  Leucocytes__CRP


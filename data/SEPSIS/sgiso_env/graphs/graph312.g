v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 LacticAcid
v 5 Leucocytes
v 6 CRP
v 7 ERSepsisTriage
v 8 IVLiquid
v 9 Leucocytes
v 10 IVAntibiotics
v 11 AdmissionNC
v 12 AdmissionNC
v 13 Leucocytes
v 14 CRP
v 15 CRP
v 16 Leucocytes
v 17 Leucocytes
v 18 CRP
v 19 ReleaseA
v 20 ReturnER
v 21 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  CRP__ERSepsisTriage
e 19 20  ReleaseA__ReturnER
e 20 21  ReturnER__END
e 3 4  ERTriage__LacticAcid
e 5 6  Leucocytes__CRP
e 4 5  LacticAcid__Leucocytes
e 7 8  ERSepsisTriage__IVLiquid
e 8 9  IVLiquid__Leucocytes
e 9 10  Leucocytes__IVAntibiotics
e 10 11  IVAntibiotics__AdmissionNC
e 11 12  AdmissionNC__AdmissionNC
e 13 14  Leucocytes__CRP
e 12 13  AdmissionNC__Leucocytes
e 14 15  CRP__CRP
e 15 16  CRP__Leucocytes
e 16 17  Leucocytes__Leucocytes
e 18 19  CRP__ReleaseA
e 17 18  Leucocytes__CRP


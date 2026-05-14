v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 Leucocytes
v 5 LacticAcid
v 6 CRP
v 7 ERSepsisTriage
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 CRP
v 12 Leucocytes
v 13 Leucocytes
v 14 CRP
v 15 Leucocytes
v 16 CRP
v 17 AdmissionNC
v 18 CRP
v 19 Leucocytes
v 20 ReleaseA
v 21 ReturnER
v 22 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  CRP__ERSepsisTriage
e 11 12  CRP__Leucocytes
e 14 15  CRP__Leucocytes
e 17 18  AdmissionNC__CRP
e 18 19  CRP__Leucocytes
e 19 20  Leucocytes__ReleaseA
e 20 21  ReleaseA__ReturnER
e 21 22  ReturnER__END
e 7 8  ERSepsisTriage__IVLiquid
e 3 4  ERTriage__Leucocytes
e 5 6  LacticAcid__CRP
e 4 5  Leucocytes__LacticAcid
e 8 9  IVLiquid__IVAntibiotics
e 10 11  AdmissionNC__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 12 13  Leucocytes__Leucocytes
e 13 14  Leucocytes__CRP
e 15 16  Leucocytes__CRP
e 16 17  CRP__AdmissionNC


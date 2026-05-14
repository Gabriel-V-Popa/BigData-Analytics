v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 LacticAcid
v 7 Leucocytes
v 8 CRP
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 AdmissionNC
v 12 LacticAcid
v 13 Leucocytes
v 14 CRP
v 15 Leucocytes
v 16 CRP
v 17 Leucocytes
v 18 CRP
v 19 CRP
v 20 Leucocytes
v 21 CRP
v 22 ReleaseA
v 23 ReturnER
v 24 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 12 13  LacticAcid__Leucocytes
e 13 14  Leucocytes__CRP
e 14 15  CRP__Leucocytes
e 15 16  Leucocytes__CRP
e 16 17  CRP__Leucocytes
e 17 18  Leucocytes__CRP
e 22 23  ReleaseA__ReturnER
e 23 24  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVLiquid
e 6 7  LacticAcid__Leucocytes
e 5 6  IVLiquid__LacticAcid
e 7 8  Leucocytes__CRP
e 8 9  CRP__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 11 12  AdmissionNC__LacticAcid
e 10 11  AdmissionNC__AdmissionNC
e 18 19  CRP__CRP
e 19 20  CRP__Leucocytes
e 20 21  Leucocytes__CRP
e 21 22  CRP__ReleaseA


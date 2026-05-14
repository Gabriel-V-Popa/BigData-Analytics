v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 CRP
v 7 Leucocytes
v 8 LacticAcid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 LacticAcid
v 12 CRP
v 13 Leucocytes
v 14 CRP
v 15 Leucocytes
v 16 LacticAcid
v 17 CRP
v 18 Leucocytes
v 19 LacticAcid
v 20 Leucocytes
v 21 CRP
v 22 ReleaseA
v 23 ReturnER
v 24 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  CRP__Leucocytes
e 13 14  Leucocytes__CRP
e 14 15  CRP__Leucocytes
e 17 18  CRP__Leucocytes
e 19 20  LacticAcid__Leucocytes
e 22 23  ReleaseA__ReturnER
e 23 24  ReturnER__END
e 18 19  Leucocytes__LacticAcid
e 3 4  ERTriage__ERSepsisTriage
e 5 6  IVLiquid__CRP
e 4 5  ERSepsisTriage__IVLiquid
e 7 8  Leucocytes__LacticAcid
e 8 9  LacticAcid__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__LacticAcid
e 11 12  LacticAcid__CRP
e 12 13  CRP__Leucocytes
e 15 16  Leucocytes__LacticAcid
e 16 17  LacticAcid__CRP
e 20 21  Leucocytes__CRP
e 21 22  CRP__ReleaseA


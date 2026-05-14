v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 LacticAcid
v 6 Leucocytes
v 7 CRP
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 LacticAcid
v 12 CRP
v 13 Leucocytes
v 14 AdmissionNC
v 15 CRP
v 16 LacticAcid
v 17 Leucocytes
v 18 Leucocytes
v 19 CRP
v 20 CRP
v 21 ReleaseA
v 22 ReturnER
v 23 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 13 14  Leucocytes__AdmissionNC
e 14 15  AdmissionNC__CRP
e 21 22  ReleaseA__ReturnER
e 22 23  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__LacticAcid
e 5 6  LacticAcid__Leucocytes
e 6 7  Leucocytes__CRP
e 8 9  IVLiquid__IVAntibiotics
e 7 8  CRP__IVLiquid
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__LacticAcid
e 11 12  LacticAcid__CRP
e 12 13  CRP__Leucocytes
e 15 16  CRP__LacticAcid
e 16 17  LacticAcid__Leucocytes
e 17 18  Leucocytes__Leucocytes
e 20 21  CRP__ReleaseA
e 18 19  Leucocytes__CRP
e 19 20  CRP__CRP


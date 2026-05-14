v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 LacticAcid
v 7 CRP
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionIC
v 11 CRP
v 12 LacticAcid
v 13 Leucocytes
v 14 AdmissionNC
v 15 CRP
v 16 Leucocytes
v 17 CRP
v 18 Leucocytes
v 19 Leucocytes
v 20 CRP
v 21 ReleaseA
v 22 ReturnER
v 23 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 9 10  IVAntibiotics__AdmissionIC
e 9 12  IVAntibiotics__LacticAcid
e 12 13  LacticAcid__Leucocytes
e 13 14  Leucocytes__AdmissionNC
e 14 15  AdmissionNC__CRP
e 15 16  CRP__Leucocytes
e 16 17  Leucocytes__CRP
e 17 18  CRP__Leucocytes
e 21 22  ReleaseA__ReturnER
e 22 23  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__LacticAcid
e 8 9  IVLiquid__IVAntibiotics
e 6 7  LacticAcid__CRP
e 7 8  CRP__IVLiquid
e 11 13  CRP__Leucocytes
e 10 11  AdmissionIC__CRP
e 18 19  Leucocytes__Leucocytes
e 20 21  CRP__ReleaseA
e 19 20  Leucocytes__CRP


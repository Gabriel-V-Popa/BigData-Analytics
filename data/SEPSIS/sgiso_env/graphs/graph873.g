v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 IVAntibiotics
v 7 LacticAcid
v 8 Leucocytes
v 9 CRP
v 10 AdmissionNC
v 11 AdmissionNC
v 12 AdmissionIC
v 13 Leucocytes
v 14 CRP
v 15 LacticAcid
v 16 LacticAcid
v 17 LacticAcid
v 18 Leucocytes
v 19 CRP
v 20 AdmissionNC
v 21 Leucocytes
v 22 CRP
v 23 ReleaseA
v 24 ReturnER
v 25 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  IVAntibiotics__LacticAcid
e 7 8  LacticAcid__Leucocytes
e 8 9  Leucocytes__CRP
e 13 14  Leucocytes__CRP
e 18 19  Leucocytes__CRP
e 23 24  ReleaseA__ReturnER
e 24 25  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__IVAntibiotics
e 9 10  CRP__AdmissionNC
e 12 13  AdmissionIC__Leucocytes
e 10 11  AdmissionNC__AdmissionNC
e 11 12  AdmissionNC__AdmissionIC
e 14 15  CRP__LacticAcid
e 17 18  LacticAcid__Leucocytes
e 15 16  LacticAcid__LacticAcid
e 16 17  LacticAcid__LacticAcid
e 19 20  CRP__AdmissionNC
e 20 21  AdmissionNC__Leucocytes
e 21 22  Leucocytes__CRP
e 22 23  CRP__ReleaseA


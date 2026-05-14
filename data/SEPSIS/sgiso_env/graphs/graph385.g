v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 LacticAcid
v 6 Leucocytes
v 7 CRP
v 8 IVAntibiotics
v 9 IVLiquid
v 10 AdmissionNC
v 11 AdmissionIC
v 12 LacticAcid
v 13 CRP
v 14 Leucocytes
v 15 CRP
v 16 Leucocytes
v 17 LacticAcid
v 18 CRP
v 19 Leucocytes
v 20 LacticAcid
v 21 AdmissionNC
v 22 CRP
v 23 Leucocytes
v 24 CRP
v 25 Leucocytes
v 26 CRP
v 27 Leucocytes
v 28 ReleaseA
v 29 ReturnER
v 30 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 14 15  Leucocytes__CRP
e 15 16  CRP__Leucocytes
e 18 19  CRP__Leucocytes
e 21 22  AdmissionNC__CRP
e 22 23  CRP__Leucocytes
e 23 24  Leucocytes__CRP
e 24 25  CRP__Leucocytes
e 25 26  Leucocytes__CRP
e 26 27  CRP__Leucocytes
e 27 28  Leucocytes__ReleaseA
e 28 29  ReleaseA__ReturnER
e 29 30  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__LacticAcid
e 5 6  LacticAcid__Leucocytes
e 6 7  Leucocytes__CRP
e 7 8  CRP__IVAntibiotics
e 8 9  IVAntibiotics__IVLiquid
e 10 11  AdmissionNC__AdmissionIC
e 10 12  AdmissionNC__LacticAcid
e 9 10  IVLiquid__AdmissionNC
e 11 13  AdmissionIC__CRP
e 12 13  LacticAcid__CRP
e 13 14  CRP__Leucocytes
e 16 17  Leucocytes__LacticAcid
e 17 18  LacticAcid__CRP
e 19 20  Leucocytes__LacticAcid
e 20 21  LacticAcid__AdmissionNC


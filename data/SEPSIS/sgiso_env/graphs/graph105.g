v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 LacticAcid
v 6 CRP
v 7 Leucocytes
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 AdmissionIC
v 12 Leucocytes
v 13 LacticAcid
v 14 CRP
v 15 LacticAcid
v 16 Leucocytes
v 17 CRP
v 18 Leucocytes
v 19 CRP
v 20 LacticAcid
v 21 CRP
v 22 LacticAcid
v 23 Leucocytes
v 24 AdmissionNC
v 25 CRP
v 26 Leucocytes
v 27 Leucocytes
v 28 CRP
v 29 ReleaseA
v 30 ReturnER
v 31 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  CRP__Leucocytes
e 16 17  Leucocytes__CRP
e 17 18  CRP__Leucocytes
e 18 19  Leucocytes__CRP
e 23 24  Leucocytes__AdmissionNC
e 24 25  AdmissionNC__CRP
e 25 26  CRP__Leucocytes
e 29 30  ReleaseA__ReturnER
e 30 31  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 5 6  LacticAcid__CRP
e 4 5  ERSepsisTriage__LacticAcid
e 7 8  Leucocytes__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__AdmissionIC
e 10 13  AdmissionNC__LacticAcid
e 11 12  AdmissionIC__Leucocytes
e 13 14  LacticAcid__CRP
e 12 14  Leucocytes__CRP
e 15 16  LacticAcid__Leucocytes
e 14 15  CRP__LacticAcid
e 19 20  CRP__LacticAcid
e 22 23  LacticAcid__Leucocytes
e 20 21  LacticAcid__CRP
e 21 22  CRP__LacticAcid
e 26 27  Leucocytes__Leucocytes
e 28 29  CRP__ReleaseA
e 27 28  Leucocytes__CRP


v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 LacticAcid
v 7 CRP
v 8 AdmissionNC
v 9 AdmissionNC
v 10 AdmissionIC
v 11 LacticAcid
v 12 Leucocytes
v 13 CRP
v 14 Leucocytes
v 15 LacticAcid
v 16 IVLiquid
v 17 IVAntibiotics
v 18 Leucocytes
v 19 CRP
v 20 LacticAcid
v 21 LacticAcid
v 22 Leucocytes
v 23 CRP
v 24 AdmissionNC
v 25 Leucocytes
v 26 Leucocytes
v 27 ReleaseA
v 28 ReturnER
v 29 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 12 13  Leucocytes__CRP
e 13 14  CRP__Leucocytes
e 22 23  Leucocytes__CRP
e 27 28  ReleaseA__ReturnER
e 28 29  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__LacticAcid
e 5 10  Leucocytes__AdmissionIC
e 6 7  LacticAcid__CRP
e 7 8  CRP__AdmissionNC
e 8 9  AdmissionNC__AdmissionNC
e 10 11  AdmissionIC__LacticAcid
e 9 11  AdmissionNC__LacticAcid
e 11 12  LacticAcid__Leucocytes
e 14 15  Leucocytes__LacticAcid
e 16 17  IVLiquid__IVAntibiotics
e 15 16  LacticAcid__IVLiquid
e 17 18  IVAntibiotics__Leucocytes
e 19 20  CRP__LacticAcid
e 18 19  Leucocytes__CRP
e 20 21  LacticAcid__LacticAcid
e 21 22  LacticAcid__Leucocytes
e 23 24  CRP__AdmissionNC
e 24 25  AdmissionNC__Leucocytes
e 25 26  Leucocytes__Leucocytes
e 26 27  Leucocytes__ReleaseA


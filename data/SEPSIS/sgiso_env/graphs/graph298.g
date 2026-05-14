v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 LacticAcid
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionIC
v 11 LacticAcid
v 12 Leucocytes
v 13 CRP
v 14 Leucocytes
v 15 CRP
v 16 LacticAcid
v 17 AdmissionNC
v 18 Leucocytes
v 19 CRP
v 20 CRP
v 21 Leucocytes
v 22 Leucocytes
v 23 Leucocytes
v 24 CRP
v 25 Leucocytes
v 26 CRP
v 27 ReleaseA
v 28 ReturnER
v 29 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 9 10  IVAntibiotics__AdmissionIC
e 9 11  IVAntibiotics__LacticAcid
e 10 12  AdmissionIC__Leucocytes
e 11 12  LacticAcid__Leucocytes
e 12 13  Leucocytes__CRP
e 13 14  CRP__Leucocytes
e 14 15  Leucocytes__CRP
e 18 19  Leucocytes__CRP
e 24 25  CRP__Leucocytes
e 27 28  ReleaseA__ReturnER
e 28 29  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__CRP
e 8 9  IVLiquid__IVAntibiotics
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__IVLiquid
e 15 16  CRP__LacticAcid
e 17 18  AdmissionNC__Leucocytes
e 16 17  LacticAcid__AdmissionNC
e 19 20  CRP__CRP
e 20 21  CRP__Leucocytes
e 21 22  Leucocytes__Leucocytes
e 23 24  Leucocytes__CRP
e 22 23  Leucocytes__Leucocytes
e 25 26  Leucocytes__CRP
e 26 27  CRP__ReleaseA


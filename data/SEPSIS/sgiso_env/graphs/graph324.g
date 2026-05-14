v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 LacticAcid
v 7 CRP
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 CRP
v 12 Leucocytes
v 13 Leucocytes
v 14 CRP
v 15 AdmissionIC
v 16 Leucocytes
v 17 CRP
v 18 LacticAcid
v 19 LacticAcid
v 20 CRP
v 21 Leucocytes
v 22 LacticAcid
v 23 Leucocytes
v 24 CRP
v 25 AdmissionNC
v 26 Leucocytes
v 27 Leucocytes
v 28 CRP
v 29 ReleaseA
v 30 ReturnER
v 31 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 11 12  CRP__Leucocytes
e 16 17  Leucocytes__CRP
e 22 23  LacticAcid__Leucocytes
e 23 24  Leucocytes__CRP
e 29 30  ReleaseA__ReturnER
e 30 31  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 21 22  Leucocytes__LacticAcid
e 5 6  Leucocytes__LacticAcid
e 7 8  CRP__IVLiquid
e 6 7  LacticAcid__CRP
e 8 9  IVLiquid__IVAntibiotics
e 10 11  AdmissionNC__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 12 13  Leucocytes__Leucocytes
e 13 14  Leucocytes__CRP
e 14 15  CRP__AdmissionIC
e 15 16  AdmissionIC__Leucocytes
e 17 18  CRP__LacticAcid
e 20 21  CRP__Leucocytes
e 18 19  LacticAcid__LacticAcid
e 19 20  LacticAcid__CRP
e 24 25  CRP__AdmissionNC
e 25 26  AdmissionNC__Leucocytes
e 26 27  Leucocytes__Leucocytes
e 28 29  CRP__ReleaseA
e 27 28  Leucocytes__CRP


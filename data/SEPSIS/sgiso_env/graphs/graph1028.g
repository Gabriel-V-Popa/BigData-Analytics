v 1 START
v 2 ERSepsisTriage
v 3 ERRegistration
v 4 ERTriage
v 5 IVLiquid
v 6 IVAntibiotics
v 7 CRP
v 8 LacticAcid
v 9 Leucocytes
v 10 AdmissionIC
v 11 LacticAcid
v 12 Leucocytes
v 13 CRP
v 14 LacticAcid
v 15 Leucocytes
v 16 CRP
v 17 LacticAcid
v 18 Leucocytes
v 19 CRP
v 20 LacticAcid
v 21 AdmissionNC
v 22 CRP
v 23 Leucocytes
v 24 CRP
v 25 Leucocytes
v 26 ReleaseA
v 27 ReturnER
v 28 END
e 3 4  ERRegistration__ERTriage
e 10 12  AdmissionIC__Leucocytes
e 11 12  LacticAcid__Leucocytes
e 12 13  Leucocytes__CRP
e 15 16  Leucocytes__CRP
e 21 22  AdmissionNC__CRP
e 22 23  CRP__Leucocytes
e 23 24  Leucocytes__CRP
e 24 25  CRP__Leucocytes
e 25 26  Leucocytes__ReleaseA
e 26 27  ReleaseA__ReturnER
e 27 28  ReturnER__END
e 9 10  Leucocytes__AdmissionIC
e 9 11  Leucocytes__LacticAcid
e 1 2  START__ERSepsisTriage
e 2 3  ERSepsisTriage__ERRegistration
e 4 5  ERTriage__IVLiquid
e 6 7  IVAntibiotics__CRP
e 5 6  IVLiquid__IVAntibiotics
e 7 8  CRP__LacticAcid
e 8 9  LacticAcid__Leucocytes
e 13 14  CRP__LacticAcid
e 14 15  LacticAcid__Leucocytes
e 16 17  CRP__LacticAcid
e 17 18  LacticAcid__Leucocytes
e 18 19  Leucocytes__CRP
e 20 21  LacticAcid__AdmissionNC
e 19 20  CRP__LacticAcid


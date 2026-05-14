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
v 11 AdmissionNC
v 12 CRP
v 13 Leucocytes
v 14 CRP
v 15 AdmissionIC
v 16 LacticAcid
v 17 CRP
v 18 Leucocytes
v 19 LacticAcid
v 20 AdmissionNC
v 21 AdmissionNC
v 22 CRP
v 23 Leucocytes
v 24 CRP
v 25 Leucocytes
v 26 CRP
v 27 Leucocytes
v 28 CRP
v 29 Leucocytes
v 30 CRP
v 31 Leucocytes
v 32 CRP
v 33 Leucocytes
v 34 CRP
v 35 ReleaseA
v 36 ReturnER
v 37 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 12 13  CRP__Leucocytes
e 22 23  CRP__Leucocytes
e 23 24  Leucocytes__CRP
e 24 25  CRP__Leucocytes
e 25 26  Leucocytes__CRP
e 26 27  CRP__Leucocytes
e 27 28  Leucocytes__CRP
e 28 29  CRP__Leucocytes
e 29 30  Leucocytes__CRP
e 30 31  CRP__Leucocytes
e 31 32  Leucocytes__CRP
e 32 33  CRP__Leucocytes
e 35 36  ReleaseA__ReturnER
e 36 37  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__LacticAcid
e 5 6  LacticAcid__Leucocytes
e 6 7  Leucocytes__CRP
e 7 8  CRP__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 11 12  AdmissionNC__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__AdmissionNC
e 13 14  Leucocytes__CRP
e 14 15  CRP__AdmissionIC
e 14 16  CRP__LacticAcid
e 15 17  AdmissionIC__CRP
e 16 17  LacticAcid__CRP
e 17 18  CRP__Leucocytes
e 18 19  Leucocytes__LacticAcid
e 19 20  LacticAcid__AdmissionNC
e 20 21  AdmissionNC__AdmissionNC
e 21 22  AdmissionNC__CRP
e 33 34  Leucocytes__CRP
e 34 35  CRP__ReleaseA


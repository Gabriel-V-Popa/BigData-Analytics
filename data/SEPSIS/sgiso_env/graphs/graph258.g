v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 CRP
v 5 Leucocytes
v 6 LacticAcid
v 7 ERSepsisTriage
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 AdmissionIC
v 12 CRP
v 13 LacticAcid
v 14 Leucocytes
v 15 LacticAcid
v 16 Leucocytes
v 17 CRP
v 18 LacticAcid
v 19 AdmissionIC
v 20 LacticAcid
v 21 CRP
v 22 Leucocytes
v 23 LacticAcid
v 24 Leucocytes
v 25 CRP
v 26 Leucocytes
v 27 CRP
v 28 LacticAcid
v 29 AdmissionNC
v 30 CRP
v 31 Leucocytes
v 32 CRP
v 33 Leucocytes
v 34 CRP
v 35 Leucocytes
v 36 AdmissionNC
v 37 CRP
v 38 Leucocytes
v 39 ReleaseA
v 40 ReturnER
v 41 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__CRP
e 4 5  CRP__Leucocytes
e 13 14  LacticAcid__Leucocytes
e 15 16  LacticAcid__Leucocytes
e 23 24  LacticAcid__Leucocytes
e 24 25  Leucocytes__CRP
e 25 26  CRP__Leucocytes
e 29 30  AdmissionNC__CRP
e 30 31  CRP__Leucocytes
e 31 32  Leucocytes__CRP
e 32 33  CRP__Leucocytes
e 33 34  Leucocytes__CRP
e 34 35  CRP__Leucocytes
e 35 36  Leucocytes__AdmissionNC
e 36 37  AdmissionNC__CRP
e 37 38  CRP__Leucocytes
e 38 39  Leucocytes__ReleaseA
e 39 40  ReleaseA__ReturnER
e 40 41  ReturnER__END
e 14 15  Leucocytes__LacticAcid
e 22 23  Leucocytes__LacticAcid
e 5 6  Leucocytes__LacticAcid
e 8 9  IVLiquid__IVAntibiotics
e 6 7  LacticAcid__ERSepsisTriage
e 7 8  ERSepsisTriage__IVLiquid
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__AdmissionIC
e 10 13  AdmissionNC__LacticAcid
e 12 14  CRP__Leucocytes
e 11 12  AdmissionIC__CRP
e 16 17  Leucocytes__CRP
e 17 18  CRP__LacticAcid
e 17 19  CRP__AdmissionIC
e 18 20  LacticAcid__LacticAcid
e 19 20  AdmissionIC__LacticAcid
e 21 22  CRP__Leucocytes
e 20 21  LacticAcid__CRP
e 26 27  Leucocytes__CRP
e 28 29  LacticAcid__AdmissionNC
e 27 28  CRP__LacticAcid


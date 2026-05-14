v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 Leucocytes
v 7 LacticAcid
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 AdmissionNC
v 12 AdmissionIC
v 13 CRP
v 14 Leucocytes
v 15 LacticAcid
v 16 LacticAcid
v 17 LacticAcid
v 18 Leucocytes
v 19 CRP
v 20 CRP
v 21 LacticAcid
v 22 Leucocytes
v 23 CRP
v 24 Leucocytes
v 25 LacticAcid
v 26 LacticAcid
v 27 CRP
v 28 Leucocytes
v 29 CRP
v 30 Leucocytes
v 31 LacticAcid
v 32 Leucocytes
v 33 LacticAcid
v 34 CRP
v 35 CRP
v 36 Leucocytes
v 37 LacticAcid
v 38 LacticAcid
v 39 Leucocytes
v 40 CRP
v 41 ReleaseE
v 42 ReturnER
v 43 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 18 19  Leucocytes__CRP
e 22 23  Leucocytes__CRP
e 23 24  CRP__Leucocytes
e 27 28  CRP__Leucocytes
e 28 29  Leucocytes__CRP
e 29 30  CRP__Leucocytes
e 31 32  LacticAcid__Leucocytes
e 30 31  Leucocytes__LacticAcid
e 36 37  Leucocytes__LacticAcid
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 6 7  Leucocytes__LacticAcid
e 8 9  IVLiquid__IVAntibiotics
e 7 8  LacticAcid__IVLiquid
e 9 10  IVAntibiotics__AdmissionNC
e 11 12  AdmissionNC__AdmissionIC
e 11 15  AdmissionNC__LacticAcid
e 10 11  AdmissionNC__AdmissionNC
e 12 13  AdmissionIC__CRP
e 13 14  CRP__Leucocytes
e 15 16  LacticAcid__LacticAcid
e 14 16  Leucocytes__LacticAcid
e 17 18  LacticAcid__Leucocytes
e 16 17  LacticAcid__LacticAcid
e 19 20  CRP__CRP
e 21 22  LacticAcid__Leucocytes
e 20 21  CRP__LacticAcid
e 24 25  Leucocytes__LacticAcid
e 26 27  LacticAcid__CRP
e 25 26  LacticAcid__LacticAcid
e 32 33  Leucocytes__LacticAcid
e 33 34  LacticAcid__CRP
e 34 35  CRP__CRP
e 35 36  CRP__Leucocytes
e 37 38  LacticAcid__LacticAcid
e 38 39  LacticAcid__Leucocytes
e 39 40  Leucocytes__CRP
e 42 43  ReturnER__END
e 40 41  CRP__ReleaseE
e 41 42  ReleaseE__ReturnER


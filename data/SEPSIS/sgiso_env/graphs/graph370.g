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
v 11 Leucocytes
v 12 CRP
v 13 AdmissionNC
v 14 Leucocytes
v 15 CRP
v 16 LacticAcid
v 17 CRP
v 18 Leucocytes
v 19 AdmissionNC
v 20 Leucocytes
v 21 AdmissionIC
v 22 CRP
v 23 LacticAcid
v 24 Leucocytes
v 25 Leucocytes
v 26 Leucocytes
v 27 CRP
v 28 LacticAcid
v 29 Leucocytes
v 30 AdmissionNC
v 31 Leucocytes
v 32 CRP
v 33 Leucocytes
v 34 Leucocytes
v 35 Leucocytes
v 36 Leucocytes
v 37 CRP
v 38 Leucocytes
v 39 CRP
v 40 Leucocytes
v 41 ReleaseD
v 42 ReturnER
v 43 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  Leucocytes__CRP
e 11 12  Leucocytes__CRP
e 14 15  Leucocytes__CRP
e 18 19  Leucocytes__AdmissionNC
e 29 30  Leucocytes__AdmissionNC
e 32 33  CRP__Leucocytes
e 37 38  CRP__Leucocytes
e 38 39  Leucocytes__CRP
e 39 40  CRP__Leucocytes
e 40 41  Leucocytes__ReleaseD
e 41 42  ReleaseD__ReturnER
e 42 43  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__LacticAcid
e 5 6  LacticAcid__Leucocytes
e 7 8  CRP__IVLiquid
e 10 11  AdmissionNC__Leucocytes
e 8 9  IVLiquid__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 12 13  CRP__AdmissionNC
e 13 14  AdmissionNC__Leucocytes
e 15 16  CRP__LacticAcid
e 17 18  CRP__Leucocytes
e 16 17  LacticAcid__CRP
e 19 20  AdmissionNC__Leucocytes
e 21 22  AdmissionIC__CRP
e 20 21  Leucocytes__AdmissionIC
e 22 23  CRP__LacticAcid
e 23 24  LacticAcid__Leucocytes
e 24 25  Leucocytes__Leucocytes
e 26 27  Leucocytes__CRP
e 25 26  Leucocytes__Leucocytes
e 27 28  CRP__LacticAcid
e 28 29  LacticAcid__Leucocytes
e 30 31  AdmissionNC__Leucocytes
e 31 32  Leucocytes__CRP
e 33 34  Leucocytes__Leucocytes
e 36 37  Leucocytes__CRP
e 34 35  Leucocytes__Leucocytes
e 35 36  Leucocytes__Leucocytes


v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 LacticAcid
v 7 Leucocytes
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 AdmissionNC
v 12 AdmissionNC
v 13 Leucocytes
v 14 Leucocytes
v 15 CRP
v 16 Leucocytes
v 17 CRP
v 18 AdmissionIC
v 19 Leucocytes
v 20 CRP
v 21 LacticAcid
v 22 Leucocytes
v 23 Leucocytes
v 24 Leucocytes
v 25 Leucocytes
v 26 Leucocytes
v 27 Leucocytes
v 28 Leucocytes
v 29 CRP
v 30 LacticAcid
v 31 Leucocytes
v 32 Leucocytes
v 33 Leucocytes
v 34 Leucocytes
v 35 Leucocytes
v 36 Leucocytes
v 37 Leucocytes
v 38 Leucocytes
v 39 LacticAcid
v 40 CRP
v 41 LacticAcid
v 42 Leucocytes
v 43 CRP
v 44 AdmissionNC
v 45 Leucocytes
v 46 Leucocytes
v 47 Leucocytes
v 48 ReleaseA
v 49 ReturnER
v 50 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 7 8  Leucocytes__IVLiquid
e 15 16  CRP__Leucocytes
e 16 17  Leucocytes__CRP
e 19 20  Leucocytes__CRP
e 42 43  Leucocytes__CRP
e 48 49  ReleaseA__ReturnER
e 49 50  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 5 6  CRP__LacticAcid
e 6 7  LacticAcid__Leucocytes
e 8 9  IVLiquid__IVAntibiotics
e 14 15  Leucocytes__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__AdmissionNC
e 11 12  AdmissionNC__AdmissionNC
e 12 13  AdmissionNC__Leucocytes
e 13 14  Leucocytes__Leucocytes
e 17 18  CRP__AdmissionIC
e 18 19  AdmissionIC__Leucocytes
e 20 21  CRP__LacticAcid
e 21 22  LacticAcid__Leucocytes
e 22 23  Leucocytes__Leucocytes
e 28 29  Leucocytes__CRP
e 23 24  Leucocytes__Leucocytes
e 24 25  Leucocytes__Leucocytes
e 25 26  Leucocytes__Leucocytes
e 26 27  Leucocytes__Leucocytes
e 27 28  Leucocytes__Leucocytes
e 29 30  CRP__LacticAcid
e 30 31  LacticAcid__Leucocytes
e 31 32  Leucocytes__Leucocytes
e 39 40  LacticAcid__CRP
e 32 33  Leucocytes__Leucocytes
e 33 34  Leucocytes__Leucocytes
e 34 35  Leucocytes__Leucocytes
e 35 36  Leucocytes__Leucocytes
e 36 37  Leucocytes__Leucocytes
e 37 38  Leucocytes__Leucocytes
e 38 39  Leucocytes__LacticAcid
e 40 41  CRP__LacticAcid
e 41 42  LacticAcid__Leucocytes
e 43 44  CRP__AdmissionNC
e 44 45  AdmissionNC__Leucocytes
e 45 46  Leucocytes__Leucocytes
e 47 48  Leucocytes__ReleaseA
e 46 47  Leucocytes__Leucocytes


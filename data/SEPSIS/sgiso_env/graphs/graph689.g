v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 LacticAcid
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 AdmissionIC
v 12 Leucocytes
v 13 CRP
v 14 LacticAcid
v 15 LacticAcid
v 16 Leucocytes
v 17 CRP
v 18 Leucocytes
v 19 CRP
v 20 LacticAcid
v 21 CRP
v 22 LacticAcid
v 23 Leucocytes
v 24 CRP
v 25 LacticAcid
v 26 Leucocytes
v 27 Leucocytes
v 28 CRP
v 29 LacticAcid
v 30 CRP
v 31 LacticAcid
v 32 Leucocytes
v 33 LacticAcid
v 34 CRP
v 35 Leucocytes
v 36 CRP
v 37 LacticAcid
v 38 Leucocytes
v 39 LacticAcid
v 40 Leucocytes
v 41 CRP
v 42 LacticAcid
v 43 Leucocytes
v 44 CRP
v 45 CRP
v 46 Leucocytes
v 47 LacticAcid
v 48 LacticAcid
v 49 CRP
v 50 Leucocytes
v 51 Leucocytes
v 52 CRP
v 53 LacticAcid
v 54 AdmissionNC
v 55 CRP
v 56 Leucocytes
v 57 AdmissionNC
v 58 AdmissionNC
v 59 Leucocytes
v 60 AdmissionNC
v 61 ReleaseA
v 62 ReturnER
v 63 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 16 17  Leucocytes__CRP
e 17 18  CRP__Leucocytes
e 18 19  Leucocytes__CRP
e 23 24  Leucocytes__CRP
e 34 35  CRP__Leucocytes
e 35 36  Leucocytes__CRP
e 39 40  LacticAcid__Leucocytes
e 40 41  Leucocytes__CRP
e 43 44  Leucocytes__CRP
e 49 50  CRP__Leucocytes
e 54 55  AdmissionNC__CRP
e 55 56  CRP__Leucocytes
e 56 57  Leucocytes__AdmissionNC
e 59 60  Leucocytes__AdmissionNC
e 60 61  AdmissionNC__ReleaseA
e 61 62  ReleaseA__ReturnER
e 62 63  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 38 39  Leucocytes__LacticAcid
e 5 6  Leucocytes__CRP
e 8 9  IVLiquid__IVAntibiotics
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__IVLiquid
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__AdmissionIC
e 10 14  AdmissionNC__LacticAcid
e 11 12  AdmissionIC__Leucocytes
e 12 13  Leucocytes__CRP
e 14 15  LacticAcid__LacticAcid
e 13 15  CRP__LacticAcid
e 15 16  LacticAcid__Leucocytes
e 19 20  CRP__LacticAcid
e 22 23  LacticAcid__Leucocytes
e 20 21  LacticAcid__CRP
e 21 22  CRP__LacticAcid
e 24 25  CRP__LacticAcid
e 25 26  LacticAcid__Leucocytes
e 26 27  Leucocytes__Leucocytes
e 27 28  Leucocytes__CRP
e 28 29  CRP__LacticAcid
e 31 32  LacticAcid__Leucocytes
e 29 30  LacticAcid__CRP
e 30 31  CRP__LacticAcid
e 32 33  Leucocytes__LacticAcid
e 33 34  LacticAcid__CRP
e 36 37  CRP__LacticAcid
e 37 38  LacticAcid__Leucocytes
e 41 42  CRP__LacticAcid
e 42 43  LacticAcid__Leucocytes
e 44 45  CRP__CRP
e 45 46  CRP__Leucocytes
e 46 47  Leucocytes__LacticAcid
e 48 49  LacticAcid__CRP
e 47 48  LacticAcid__LacticAcid
e 50 51  Leucocytes__Leucocytes
e 53 54  LacticAcid__AdmissionNC
e 51 52  Leucocytes__CRP
e 52 53  CRP__LacticAcid
e 57 58  AdmissionNC__AdmissionNC
e 58 59  AdmissionNC__Leucocytes


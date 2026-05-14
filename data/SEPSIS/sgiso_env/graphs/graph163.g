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
v 11 Leucocytes
v 12 CRP
v 13 LacticAcid
v 14 CRP
v 15 LacticAcid
v 16 Leucocytes
v 17 LacticAcid
v 18 Leucocytes
v 19 CRP
v 20 Leucocytes
v 21 CRP
v 22 LacticAcid
v 23 Leucocytes
v 24 CRP
v 25 LacticAcid
v 26 Leucocytes
v 27 LacticAcid
v 28 CRP
v 29 Leucocytes
v 30 LacticAcid
v 31 Leucocytes
v 32 CRP
v 33 Leucocytes
v 34 CRP
v 35 LacticAcid
v 36 AdmissionNC
v 37 Leucocytes
v 38 CRP
v 39 CRP
v 40 Leucocytes
v 41 CRP
v 42 Leucocytes
v 43 Leucocytes
v 44 Leucocytes
v 45 Leucocytes
v 46 CRP
v 47 CRP
v 48 Leucocytes
v 49 CRP
v 50 Leucocytes
v 51 Leucocytes
v 52 CRP
v 53 CRP
v 54 Leucocytes
v 55 CRP
v 56 Leucocytes
v 57 Leucocytes
v 58 CRP
v 59 ReleaseA
v 60 ReturnER
v 61 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 9 10  IVAntibiotics__AdmissionIC
e 9 13  IVAntibiotics__LacticAcid
e 17 18  LacticAcid__Leucocytes
e 18 19  Leucocytes__CRP
e 19 20  CRP__Leucocytes
e 20 21  Leucocytes__CRP
e 23 24  Leucocytes__CRP
e 28 29  CRP__Leucocytes
e 30 31  LacticAcid__Leucocytes
e 31 32  Leucocytes__CRP
e 32 33  CRP__Leucocytes
e 33 34  Leucocytes__CRP
e 37 38  Leucocytes__CRP
e 40 41  Leucocytes__CRP
e 41 42  CRP__Leucocytes
e 48 49  Leucocytes__CRP
e 49 50  CRP__Leucocytes
e 54 55  Leucocytes__CRP
e 55 56  CRP__Leucocytes
e 59 60  ReleaseA__ReturnER
e 60 61  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 16 17  Leucocytes__LacticAcid
e 29 30  Leucocytes__LacticAcid
e 5 6  Leucocytes__CRP
e 8 9  IVLiquid__IVAntibiotics
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__IVLiquid
e 10 11  AdmissionIC__Leucocytes
e 11 12  Leucocytes__CRP
e 13 14  LacticAcid__CRP
e 12 14  CRP__CRP
e 15 16  LacticAcid__Leucocytes
e 14 15  CRP__LacticAcid
e 21 22  CRP__LacticAcid
e 22 23  LacticAcid__Leucocytes
e 24 25  CRP__LacticAcid
e 25 26  LacticAcid__Leucocytes
e 26 27  Leucocytes__LacticAcid
e 27 28  LacticAcid__CRP
e 34 35  CRP__LacticAcid
e 36 37  AdmissionNC__Leucocytes
e 35 36  LacticAcid__AdmissionNC
e 38 39  CRP__CRP
e 39 40  CRP__Leucocytes
e 42 43  Leucocytes__Leucocytes
e 45 46  Leucocytes__CRP
e 43 44  Leucocytes__Leucocytes
e 44 45  Leucocytes__Leucocytes
e 46 47  CRP__CRP
e 47 48  CRP__Leucocytes
e 50 51  Leucocytes__Leucocytes
e 51 52  Leucocytes__CRP
e 52 53  CRP__CRP
e 53 54  CRP__Leucocytes
e 56 57  Leucocytes__Leucocytes
e 58 59  CRP__ReleaseA
e 57 58  Leucocytes__CRP


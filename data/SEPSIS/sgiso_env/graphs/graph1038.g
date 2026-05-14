v 1 START
v 2 IVLiquid
v 3 ERRegistration
v 4 ERTriage
v 5 ERSepsisTriage
v 6 Leucocytes
v 7 LacticAcid
v 8 CRP
v 9 IVAntibiotics
v 10 LacticAcid
v 11 AdmissionIC
v 12 LacticAcid
v 13 CRP
v 14 LacticAcid
v 15 Leucocytes
v 16 LacticAcid
v 17 Leucocytes
v 18 CRP
v 19 Leucocytes
v 20 LacticAcid
v 21 LacticAcid
v 22 CRP
v 23 Leucocytes
v 24 Leucocytes
v 25 LacticAcid
v 26 CRP
v 27 Leucocytes
v 28 CRP
v 29 LacticAcid
v 30 Leucocytes
v 31 CRP
v 32 LacticAcid
v 33 Leucocytes
v 34 CRP
v 35 LacticAcid
v 36 AdmissionNC
v 37 Leucocytes
v 38 CRP
v 39 Leucocytes
v 40 CRP
v 41 CRP
v 42 Leucocytes
v 43 CRP
v 44 Leucocytes
v 45 Leucocytes
v 46 CRP
v 47 Leucocytes
v 48 CRP
v 49 Leucocytes
v 50 CRP
v 51 Leucocytes
v 52 CRP
v 53 CRP
v 54 Leucocytes
v 55 Leucocytes
v 56 CRP
v 57 Leucocytes
v 58 Leucocytes
v 59 CRP
v 60 Leucocytes
v 61 CRP
v 62 AdmissionIC
v 63 LacticAcid
v 64 Leucocytes
v 65 CRP
v 66 Leucocytes
v 67 ReleaseB
v 68 END
e 3 4  ERRegistration__ERTriage
e 5 6  ERSepsisTriage__Leucocytes
e 9 10  IVAntibiotics__LacticAcid
e 9 11  IVAntibiotics__AdmissionIC
e 16 17  LacticAcid__Leucocytes
e 17 18  Leucocytes__CRP
e 18 19  CRP__Leucocytes
e 22 23  CRP__Leucocytes
e 26 27  CRP__Leucocytes
e 27 28  Leucocytes__CRP
e 30 31  Leucocytes__CRP
e 33 34  Leucocytes__CRP
e 37 38  Leucocytes__CRP
e 38 39  CRP__Leucocytes
e 39 40  Leucocytes__CRP
e 42 43  Leucocytes__CRP
e 43 44  CRP__Leucocytes
e 46 47  CRP__Leucocytes
e 47 48  Leucocytes__CRP
e 48 49  CRP__Leucocytes
e 49 50  Leucocytes__CRP
e 50 51  CRP__Leucocytes
e 51 52  Leucocytes__CRP
e 56 57  CRP__Leucocytes
e 59 60  CRP__Leucocytes
e 62 64  AdmissionIC__Leucocytes
e 63 64  LacticAcid__Leucocytes
e 64 65  Leucocytes__CRP
e 65 66  CRP__Leucocytes
e 4 5  ERTriage__ERSepsisTriage
e 15 16  Leucocytes__LacticAcid
e 1 2  START__IVLiquid
e 2 3  IVLiquid__ERRegistration
e 6 7  Leucocytes__LacticAcid
e 8 9  CRP__IVAntibiotics
e 7 8  LacticAcid__CRP
e 10 12  LacticAcid__LacticAcid
e 11 12  AdmissionIC__LacticAcid
e 14 15  LacticAcid__Leucocytes
e 12 13  LacticAcid__CRP
e 13 14  CRP__LacticAcid
e 19 20  Leucocytes__LacticAcid
e 21 22  LacticAcid__CRP
e 20 21  LacticAcid__LacticAcid
e 23 24  Leucocytes__Leucocytes
e 25 26  LacticAcid__CRP
e 24 25  Leucocytes__LacticAcid
e 28 29  CRP__LacticAcid
e 29 30  LacticAcid__Leucocytes
e 31 32  CRP__LacticAcid
e 32 33  LacticAcid__Leucocytes
e 34 35  CRP__LacticAcid
e 36 37  AdmissionNC__Leucocytes
e 35 36  LacticAcid__AdmissionNC
e 40 41  CRP__CRP
e 41 42  CRP__Leucocytes
e 44 45  Leucocytes__Leucocytes
e 45 46  Leucocytes__CRP
e 52 53  CRP__CRP
e 53 54  CRP__Leucocytes
e 54 55  Leucocytes__Leucocytes
e 55 56  Leucocytes__CRP
e 57 58  Leucocytes__Leucocytes
e 58 59  Leucocytes__CRP
e 60 61  Leucocytes__CRP
e 61 62  CRP__AdmissionIC
e 61 63  CRP__LacticAcid
e 66 67  Leucocytes__ReleaseB
e 67 68  ReleaseB__END


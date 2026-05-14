v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 IVAntibiotics
v 7 CRP
v 8 Leucocytes
v 9 LacticAcid
v 10 AdmissionNC
v 11 AdmissionIC
v 12 LacticAcid
v 13 Leucocytes
v 14 CRP
v 15 LacticAcid
v 16 Leucocytes
v 17 CRP
v 18 LacticAcid
v 19 LacticAcid
v 20 Leucocytes
v 21 CRP
v 22 LacticAcid
v 23 Leucocytes
v 24 CRP
v 25 LacticAcid
v 26 Leucocytes
v 27 CRP
v 28 LacticAcid
v 29 Leucocytes
v 30 CRP
v 31 Leucocytes
v 32 CRP
v 33 LacticAcid
v 34 LacticAcid
v 35 Leucocytes
v 36 CRP
v 37 Leucocytes
v 38 CRP
v 39 LacticAcid
v 40 Leucocytes
v 41 CRP
v 42 LacticAcid
v 43 LacticAcid
v 44 Leucocytes
v 45 CRP
v 46 CRP
v 47 LacticAcid
v 48 Leucocytes
v 49 Leucocytes
v 50 CRP
v 51 LacticAcid
v 52 CRP
v 53 Leucocytes
v 54 LacticAcid
v 55 CRP
v 56 LacticAcid
v 57 Leucocytes
v 58 Leucocytes
v 59 CRP
v 60 LacticAcid
v 61 Leucocytes
v 62 CRP
v 63 LacticAcid
v 64 LacticAcid
v 65 Leucocytes
v 66 CRP
v 67 CRP
v 68 LacticAcid
v 69 Leucocytes
v 70 Leucocytes
v 71 CRP
v 72 LacticAcid
v 73 Leucocytes
v 74 CRP
v 75 LacticAcid
v 76 CRP
v 77 LacticAcid
v 78 Leucocytes
v 79 Leucocytes
v 80 LacticAcid
v 81 CRP
v 82 LacticAcid
v 83 AdmissionNC
v 84 AdmissionNC
v 85 ReleaseA
v 86 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 7 8  CRP__Leucocytes
e 13 14  Leucocytes__CRP
e 16 17  Leucocytes__CRP
e 20 21  Leucocytes__CRP
e 23 24  Leucocytes__CRP
e 26 27  Leucocytes__CRP
e 29 30  Leucocytes__CRP
e 30 31  CRP__Leucocytes
e 31 32  Leucocytes__CRP
e 35 36  Leucocytes__CRP
e 36 37  CRP__Leucocytes
e 37 38  Leucocytes__CRP
e 40 41  Leucocytes__CRP
e 44 45  Leucocytes__CRP
e 61 62  Leucocytes__CRP
e 65 66  Leucocytes__CRP
e 73 74  Leucocytes__CRP
e 8 9  Leucocytes__LacticAcid
e 8 11  Leucocytes__AdmissionIC
e 3 4  ERTriage__ERSepsisTriage
e 6 7  IVAntibiotics__CRP
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__IVAntibiotics
e 9 10  LacticAcid__AdmissionNC
e 11 12  AdmissionIC__LacticAcid
e 10 12  AdmissionNC__LacticAcid
e 12 13  LacticAcid__Leucocytes
e 14 15  CRP__LacticAcid
e 15 16  LacticAcid__Leucocytes
e 17 18  CRP__LacticAcid
e 19 20  LacticAcid__Leucocytes
e 18 19  LacticAcid__LacticAcid
e 21 22  CRP__LacticAcid
e 22 23  LacticAcid__Leucocytes
e 24 25  CRP__LacticAcid
e 25 26  LacticAcid__Leucocytes
e 27 28  CRP__LacticAcid
e 28 29  LacticAcid__Leucocytes
e 32 33  CRP__LacticAcid
e 34 35  LacticAcid__Leucocytes
e 33 34  LacticAcid__LacticAcid
e 38 39  CRP__LacticAcid
e 39 40  LacticAcid__Leucocytes
e 41 42  CRP__LacticAcid
e 43 44  LacticAcid__Leucocytes
e 42 43  LacticAcid__LacticAcid
e 45 46  CRP__CRP
e 47 48  LacticAcid__Leucocytes
e 46 47  CRP__LacticAcid
e 48 49  Leucocytes__Leucocytes
e 49 50  Leucocytes__CRP
e 50 51  CRP__LacticAcid
e 52 53  CRP__Leucocytes
e 51 52  LacticAcid__CRP
e 53 54  Leucocytes__LacticAcid
e 54 55  LacticAcid__CRP
e 55 56  CRP__LacticAcid
e 56 57  LacticAcid__Leucocytes
e 57 58  Leucocytes__Leucocytes
e 58 59  Leucocytes__CRP
e 59 60  CRP__LacticAcid
e 60 61  LacticAcid__Leucocytes
e 62 63  CRP__LacticAcid
e 64 65  LacticAcid__Leucocytes
e 63 64  LacticAcid__LacticAcid
e 66 67  CRP__CRP
e 68 69  LacticAcid__Leucocytes
e 67 68  CRP__LacticAcid
e 69 70  Leucocytes__Leucocytes
e 70 71  Leucocytes__CRP
e 71 72  CRP__LacticAcid
e 72 73  LacticAcid__Leucocytes
e 74 75  CRP__LacticAcid
e 77 78  LacticAcid__Leucocytes
e 75 76  LacticAcid__CRP
e 76 77  CRP__LacticAcid
e 78 79  Leucocytes__Leucocytes
e 82 83  LacticAcid__AdmissionNC
e 79 80  Leucocytes__LacticAcid
e 80 81  LacticAcid__CRP
e 81 82  CRP__LacticAcid
e 83 84  AdmissionNC__AdmissionNC
e 85 86  ReleaseA__END
e 84 85  AdmissionNC__ReleaseA


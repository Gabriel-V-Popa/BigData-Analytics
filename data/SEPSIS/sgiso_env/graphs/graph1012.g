v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 Leucocytes
v 7 AdmissionIC
v 8 CRP
v 9 Leucocytes
v 10 LacticAcid
v 11 Leucocytes
v 12 LacticAcid
v 13 CRP
v 14 LacticAcid
v 15 CRP
v 16 Leucocytes
v 17 Leucocytes
v 18 CRP
v 19 LacticAcid
v 20 CRP
v 21 Leucocytes
v 22 LacticAcid
v 23 Leucocytes
v 24 CRP
v 25 LacticAcid
v 26 Leucocytes
v 27 CRP
v 28 LacticAcid
v 29 Leucocytes
v 30 CRP
v 31 LacticAcid
v 32 LacticAcid
v 33 CRP
v 34 Leucocytes
v 35 AdmissionNC
v 36 Leucocytes
v 37 CRP
v 38 LacticAcid
v 39 Leucocytes
v 40 Leucocytes
v 41 CRP
v 42 LacticAcid
v 43 CRP
v 44 Leucocytes
v 45 CRP
v 46 AdmissionNC
v 47 CRP
v 48 Leucocytes
v 49 CRP
v 50 Leucocytes
v 51 CRP
v 52 Leucocytes
v 53 Leucocytes
v 54 CRP
v 55 Leucocytes
v 56 CRP
v 57 CRP
v 58 Leucocytes
v 59 Leucocytes
v 60 CRP
v 61 ReleaseA
v 62 ReturnER
v 63 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 8 9  CRP__Leucocytes
e 10 11  LacticAcid__Leucocytes
e 22 23  LacticAcid__Leucocytes
e 23 24  Leucocytes__CRP
e 26 27  Leucocytes__CRP
e 29 30  Leucocytes__CRP
e 34 35  Leucocytes__AdmissionNC
e 46 47  AdmissionNC__CRP
e 47 48  CRP__Leucocytes
e 48 49  Leucocytes__CRP
e 49 50  CRP__Leucocytes
e 50 51  Leucocytes__CRP
e 51 52  CRP__Leucocytes
e 54 55  CRP__Leucocytes
e 55 56  Leucocytes__CRP
e 61 62  ReleaseA__ReturnER
e 62 63  ReturnER__END
e 9 10  Leucocytes__LacticAcid
e 21 22  Leucocytes__LacticAcid
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 6 7  Leucocytes__AdmissionIC
e 7 8  AdmissionIC__CRP
e 11 12  Leucocytes__LacticAcid
e 12 13  LacticAcid__CRP
e 13 14  CRP__LacticAcid
e 15 16  CRP__Leucocytes
e 14 15  LacticAcid__CRP
e 16 17  Leucocytes__Leucocytes
e 17 18  Leucocytes__CRP
e 18 19  CRP__LacticAcid
e 20 21  CRP__Leucocytes
e 19 20  LacticAcid__CRP
e 24 25  CRP__LacticAcid
e 25 26  LacticAcid__Leucocytes
e 27 28  CRP__LacticAcid
e 28 29  LacticAcid__Leucocytes
e 30 31  CRP__LacticAcid
e 33 34  CRP__Leucocytes
e 31 32  LacticAcid__LacticAcid
e 32 33  LacticAcid__CRP
e 35 36  AdmissionNC__Leucocytes
e 36 37  Leucocytes__CRP
e 37 38  CRP__LacticAcid
e 38 39  LacticAcid__Leucocytes
e 39 40  Leucocytes__Leucocytes
e 40 41  Leucocytes__CRP
e 41 42  CRP__LacticAcid
e 43 44  CRP__Leucocytes
e 42 43  LacticAcid__CRP
e 44 45  Leucocytes__CRP
e 45 46  CRP__AdmissionNC
e 52 53  Leucocytes__Leucocytes
e 53 54  Leucocytes__CRP
e 56 57  CRP__CRP
e 57 58  CRP__Leucocytes
e 58 59  Leucocytes__Leucocytes
e 60 61  CRP__ReleaseA
e 59 60  Leucocytes__CRP


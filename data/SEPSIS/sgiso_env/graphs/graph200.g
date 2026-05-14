v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 LacticAcid
v 6 Leucocytes
v 7 CRP
v 8 AdmissionNC
v 9 Leucocytes
v 10 CRP
v 11 Leucocytes
v 12 CRP
v 13 Leucocytes
v 14 CRP
v 15 CRP
v 16 Leucocytes
v 17 Leucocytes
v 18 CRP
v 19 CRP
v 20 Leucocytes
v 21 CRP
v 22 LacticAcid
v 23 CRP
v 24 Leucocytes
v 25 CRP
v 26 CRP
v 27 CRP
v 28 CRP
v 29 Leucocytes
v 30 CRP
v 31 Leucocytes
v 32 CRP
v 33 ReleaseA
v 34 ReturnER
v 35 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  Leucocytes__CRP
e 9 10  Leucocytes__CRP
e 10 11  CRP__Leucocytes
e 11 12  Leucocytes__CRP
e 12 13  CRP__Leucocytes
e 13 14  Leucocytes__CRP
e 20 21  Leucocytes__CRP
e 24 25  Leucocytes__CRP
e 29 30  Leucocytes__CRP
e 30 31  CRP__Leucocytes
e 33 34  ReleaseA__ReturnER
e 34 35  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__LacticAcid
e 5 6  LacticAcid__Leucocytes
e 7 8  CRP__AdmissionNC
e 8 9  AdmissionNC__Leucocytes
e 14 15  CRP__CRP
e 15 16  CRP__Leucocytes
e 16 17  Leucocytes__Leucocytes
e 17 18  Leucocytes__CRP
e 18 19  CRP__CRP
e 19 20  CRP__Leucocytes
e 21 22  CRP__LacticAcid
e 23 24  CRP__Leucocytes
e 22 23  LacticAcid__CRP
e 25 26  CRP__CRP
e 28 29  CRP__Leucocytes
e 26 27  CRP__CRP
e 27 28  CRP__CRP
e 31 32  Leucocytes__CRP
e 32 33  CRP__ReleaseA


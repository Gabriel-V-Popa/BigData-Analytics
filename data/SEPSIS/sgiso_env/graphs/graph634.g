v 1 START
v 2 ERTriage
v 3 Leucocytes
v 4 CRP
v 5 LacticAcid
v 6 Leucocytes
v 7 ERRegistration
v 8 AdmissionIC
v 9 LacticAcid
v 10 Leucocytes
v 11 CRP
v 12 CRP
v 13 LacticAcid
v 14 Leucocytes
v 15 CRP
v 16 Leucocytes
v 17 LacticAcid
v 18 Leucocytes
v 19 LacticAcid
v 20 CRP
v 21 Leucocytes
v 22 CRP
v 23 LacticAcid
v 24 LacticAcid
v 25 CRP
v 26 Leucocytes
v 27 AdmissionNC
v 28 Leucocytes
v 29 CRP
v 30 ReleaseA
v 31 ReturnER
v 32 END
e 8 10  AdmissionIC__Leucocytes
e 9 10  LacticAcid__Leucocytes
e 10 11  Leucocytes__CRP
e 14 15  Leucocytes__CRP
e 15 16  CRP__Leucocytes
e 17 18  LacticAcid__Leucocytes
e 20 21  CRP__Leucocytes
e 21 22  Leucocytes__CRP
e 26 27  Leucocytes__AdmissionNC
e 30 31  ReleaseA__ReturnER
e 31 32  ReturnER__END
e 1 2  START__ERTriage
e 16 17  Leucocytes__LacticAcid
e 2 3  ERTriage__Leucocytes
e 3 4  Leucocytes__CRP
e 4 5  CRP__LacticAcid
e 5 6  LacticAcid__Leucocytes
e 6 7  Leucocytes__ERRegistration
e 7 8  ERRegistration__AdmissionIC
e 7 9  ERRegistration__LacticAcid
e 11 12  CRP__CRP
e 13 14  LacticAcid__Leucocytes
e 12 13  CRP__LacticAcid
e 18 19  Leucocytes__LacticAcid
e 19 20  LacticAcid__CRP
e 22 23  CRP__LacticAcid
e 25 26  CRP__Leucocytes
e 23 24  LacticAcid__LacticAcid
e 24 25  LacticAcid__CRP
e 27 28  AdmissionNC__Leucocytes
e 29 30  CRP__ReleaseA
e 28 29  Leucocytes__CRP


v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 AdmissionIC
v 8 CRP
v 9 Leucocytes
v 10 LacticAcid
v 11 Leucocytes
v 12 Leucocytes
v 13 Leucocytes
v 14 Leucocytes
v 15 LacticAcid
v 16 LacticAcid
v 17 Leucocytes
v 18 CRP
v 19 Leucocytes
v 20 LacticAcid
v 21 Leucocytes
v 22 CRP
v 23 LacticAcid
v 24 ReleaseB
v 25 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 5 6  Leucocytes__CRP
e 10 11  LacticAcid__Leucocytes
e 17 18  Leucocytes__CRP
e 18 19  CRP__Leucocytes
e 20 21  LacticAcid__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 9 10  Leucocytes__LacticAcid
e 19 20  Leucocytes__LacticAcid
e 6 7  CRP__AdmissionIC
e 8 9  CRP__Leucocytes
e 7 8  AdmissionIC__CRP
e 11 12  Leucocytes__Leucocytes
e 14 15  Leucocytes__LacticAcid
e 12 13  Leucocytes__Leucocytes
e 13 14  Leucocytes__Leucocytes
e 15 16  LacticAcid__LacticAcid
e 16 17  LacticAcid__Leucocytes
e 21 22  Leucocytes__CRP
e 24 25  ReleaseB__END
e 22 23  CRP__LacticAcid
e 23 24  LacticAcid__ReleaseB


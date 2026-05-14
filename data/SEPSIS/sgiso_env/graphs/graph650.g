v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 CRP
v 5 Leucocytes
v 6 LacticAcid
v 7 ERSepsisTriage
v 8 AdmissionNC
v 9 Leucocytes
v 10 CRP
v 11 Leucocytes
v 12 CRP
v 13 CRP
v 14 Leucocytes
v 15 CRP
v 16 Leucocytes
v 17 Leucocytes
v 18 CRP
v 19 CRP
v 20 Leucocytes
v 21 Leucocytes
v 22 CRP
v 23 ReleaseB
v 24 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__CRP
e 9 10  Leucocytes__CRP
e 10 11  CRP__Leucocytes
e 11 12  Leucocytes__CRP
e 14 15  Leucocytes__CRP
e 15 16  CRP__Leucocytes
e 4 5  CRP__Leucocytes
e 6 7  LacticAcid__ERSepsisTriage
e 5 6  Leucocytes__LacticAcid
e 7 8  ERSepsisTriage__AdmissionNC
e 8 9  AdmissionNC__Leucocytes
e 12 13  CRP__CRP
e 13 14  CRP__Leucocytes
e 16 17  Leucocytes__Leucocytes
e 17 18  Leucocytes__CRP
e 18 19  CRP__CRP
e 19 20  CRP__Leucocytes
e 20 21  Leucocytes__Leucocytes
e 23 24  ReleaseB__END
e 21 22  Leucocytes__CRP
e 22 23  CRP__ReleaseB


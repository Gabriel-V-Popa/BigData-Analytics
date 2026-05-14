v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 Leucocytes
v 7 LacticAcid
v 8 AdmissionNC
v 9 AdmissionNC
v 10 CRP
v 11 Leucocytes
v 12 Leucocytes
v 13 CRP
v 14 Leucocytes
v 15 CRP
v 16 Leucocytes
v 17 CRP
v 18 CRP
v 19 Leucocytes
v 20 Leucocytes
v 21 CRP
v 22 ReleaseC
v 23 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 10 11  CRP__Leucocytes
e 13 14  CRP__Leucocytes
e 14 15  Leucocytes__CRP
e 15 16  CRP__Leucocytes
e 16 17  Leucocytes__CRP
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 6 7  Leucocytes__LacticAcid
e 7 8  LacticAcid__AdmissionNC
e 8 9  AdmissionNC__AdmissionNC
e 9 10  AdmissionNC__CRP
e 11 12  Leucocytes__Leucocytes
e 12 13  Leucocytes__CRP
e 17 18  CRP__CRP
e 18 19  CRP__Leucocytes
e 19 20  Leucocytes__Leucocytes
e 22 23  ReleaseC__END
e 20 21  Leucocytes__CRP
e 21 22  CRP__ReleaseC


v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 LacticAcid
v 7 Leucocytes
v 8 AdmissionNC
v 9 CRP
v 10 Leucocytes
v 11 LacticAcid
v 12 Leucocytes
v 13 CRP
v 14 ReleaseA
v 15 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 7 8  Leucocytes__AdmissionNC
e 8 9  AdmissionNC__CRP
e 9 10  CRP__Leucocytes
e 11 12  LacticAcid__Leucocytes
e 10 11  Leucocytes__LacticAcid
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 5 6  CRP__LacticAcid
e 6 7  LacticAcid__Leucocytes
e 12 13  Leucocytes__CRP
e 14 15  ReleaseA__END
e 13 14  CRP__ReleaseA


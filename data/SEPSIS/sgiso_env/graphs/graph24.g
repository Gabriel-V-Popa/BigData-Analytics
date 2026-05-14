v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 Leucocytes
v 5 CRP
v 6 LacticAcid
v 7 ERSepsisTriage
v 8 Leucocytes
v 9 CRP
v 10 LacticAcid
v 11 AdmissionNC
v 12 CRP
v 13 ReleaseA
v 14 ReturnER
v 15 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 7 8  ERSepsisTriage__Leucocytes
e 13 14  ReleaseA__ReturnER
e 14 15  ReturnER__END
e 3 4  ERTriage__Leucocytes
e 4 5  Leucocytes__CRP
e 5 6  CRP__LacticAcid
e 6 7  LacticAcid__ERSepsisTriage
e 8 9  Leucocytes__CRP
e 10 11  LacticAcid__AdmissionNC
e 9 10  CRP__LacticAcid
e 11 12  AdmissionNC__CRP
e 12 13  CRP__ReleaseA


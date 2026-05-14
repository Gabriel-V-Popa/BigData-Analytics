v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 Leucocytes
v 7 LacticAcid
v 8 AdmissionNC
v 9 CRP
v 10 Leucocytes
v 11 ReleaseA
v 12 ReturnER
v 13 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 8 9  AdmissionNC__CRP
e 9 10  CRP__Leucocytes
e 10 11  Leucocytes__ReleaseA
e 11 12  ReleaseA__ReturnER
e 12 13  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 6 7  Leucocytes__LacticAcid
e 7 8  LacticAcid__AdmissionNC


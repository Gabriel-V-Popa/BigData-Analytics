v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 LacticAcid
v 6 Leucocytes
v 7 CRP
v 8 AdmissionNC
v 9 AdmissionNC
v 10 CRP
v 11 Leucocytes
v 12 ReleaseA
v 13 ReturnER
v 14 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 10 11  CRP__Leucocytes
e 11 12  Leucocytes__ReleaseA
e 12 13  ReleaseA__ReturnER
e 13 14  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__LacticAcid
e 5 6  LacticAcid__Leucocytes
e 6 7  Leucocytes__CRP
e 7 8  CRP__AdmissionNC
e 8 9  AdmissionNC__AdmissionNC
e 9 10  AdmissionNC__CRP


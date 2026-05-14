v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 LacticAcid
v 7 CRP
v 8 AdmissionNC
v 9 ReleaseA
v 10 ReturnER
v 11 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 8 9  AdmissionNC__ReleaseA
e 9 10  ReleaseA__ReturnER
e 10 11  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__LacticAcid
e 7 8  CRP__AdmissionNC
e 6 7  LacticAcid__CRP


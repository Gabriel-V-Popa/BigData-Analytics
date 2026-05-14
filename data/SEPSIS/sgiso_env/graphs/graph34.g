v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 Leucocytes
v 5 CRP
v 6 LacticAcid
v 7 ERSepsisTriage
v 8 AdmissionNC
v 9 AdmissionNC
v 10 Leucocytes
v 11 CRP
v 12 ReleaseA
v 13 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__Leucocytes
e 4 5  Leucocytes__CRP
e 5 6  CRP__LacticAcid
e 6 7  LacticAcid__ERSepsisTriage
e 7 8  ERSepsisTriage__AdmissionNC
e 9 10  AdmissionNC__Leucocytes
e 8 9  AdmissionNC__AdmissionNC
e 10 11  Leucocytes__CRP
e 12 13  ReleaseA__END
e 11 12  CRP__ReleaseA


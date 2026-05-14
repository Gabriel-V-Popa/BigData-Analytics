v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 LacticAcid
v 8 AdmissionNC
v 9 CRP
v 10 ReleaseA
v 11 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__CRP
e 7 8  LacticAcid__AdmissionNC
e 6 7  CRP__LacticAcid
e 8 9  AdmissionNC__CRP
e 10 11  ReleaseA__END
e 9 10  CRP__ReleaseA


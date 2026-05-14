v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 LacticAcid
v 7 Leucocytes
v 8 AdmissionNC
v 9 AdmissionNC
v 10 ReleaseA
v 11 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 7 8  Leucocytes__AdmissionNC
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 5 6  CRP__LacticAcid
e 6 7  LacticAcid__Leucocytes
e 8 9  AdmissionNC__AdmissionNC
e 10 11  ReleaseA__END
e 9 10  AdmissionNC__ReleaseA


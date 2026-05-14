v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 LacticAcid
v 8 AdmissionNC
v 9 Leucocytes
v 10 CRP
v 11 AdmissionNC
v 12 ReleaseA
v 13 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 5 6  Leucocytes__CRP
e 3 4  ERTriage__ERSepsisTriage
e 6 7  CRP__LacticAcid
e 8 9  AdmissionNC__Leucocytes
e 7 8  LacticAcid__AdmissionNC
e 9 10  Leucocytes__CRP
e 10 11  CRP__AdmissionNC
e 11 12  AdmissionNC__ReleaseA
e 12 13  ReleaseA__END


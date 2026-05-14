v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 LacticAcid
v 7 CRP
v 8 AdmissionNC
v 9 LacticAcid
v 10 Leucocytes
v 11 CRP
v 12 AdmissionNC
v 13 AdmissionNC
v 14 ReleaseC
v 15 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__LacticAcid
e 6 7  LacticAcid__CRP
e 7 8  CRP__AdmissionNC
e 9 10  LacticAcid__Leucocytes
e 8 9  AdmissionNC__LacticAcid
e 10 11  Leucocytes__CRP
e 11 12  CRP__AdmissionNC
e 12 13  AdmissionNC__AdmissionNC
e 14 15  ReleaseC__END
e 13 14  AdmissionNC__ReleaseC


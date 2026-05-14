v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 LacticAcid
v 6 CRP
v 7 Leucocytes
v 8 AdmissionNC
v 9 AdmissionNC
v 10 Leucocytes
v 11 CRP
v 12 CRP
v 13 Leucocytes
v 14 ReleaseE
v 15 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  CRP__Leucocytes
e 7 8  Leucocytes__AdmissionNC
e 3 4  ERTriage__ERSepsisTriage
e 5 6  LacticAcid__CRP
e 4 5  ERSepsisTriage__LacticAcid
e 8 9  AdmissionNC__AdmissionNC
e 10 11  Leucocytes__CRP
e 9 10  AdmissionNC__Leucocytes
e 11 12  CRP__CRP
e 12 13  CRP__Leucocytes
e 13 14  Leucocytes__ReleaseE
e 14 15  ReleaseE__END


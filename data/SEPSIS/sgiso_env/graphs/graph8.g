v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 LacticAcid
v 7 Leucocytes
v 8 AdmissionIC
v 9 AdmissionNC
v 10 CRP
v 11 Leucocytes
v 12 CRP
v 13 AdmissionNC
v 14 ReleaseB
v 15 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 9 10  AdmissionNC__CRP
e 10 11  CRP__Leucocytes
e 13 15  AdmissionNC__END
e 14 15  ReleaseB__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 5 6  CRP__LacticAcid
e 6 7  LacticAcid__Leucocytes
e 7 8  Leucocytes__AdmissionIC
e 8 9  AdmissionIC__AdmissionNC
e 11 12  Leucocytes__CRP
e 12 13  CRP__AdmissionNC
e 12 14  CRP__ReleaseB


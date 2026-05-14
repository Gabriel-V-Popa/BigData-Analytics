v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 LacticAcid
v 7 Leucocytes
v 8 AdmissionNC
v 9 Leucocytes
v 10 CRP
v 11 Leucocytes
v 12 AdmissionNC
v 13 LacticAcid
v 14 CRP
v 15 Leucocytes
v 16 ReleaseB
v 17 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 7 8  Leucocytes__AdmissionNC
e 10 11  CRP__Leucocytes
e 11 12  Leucocytes__AdmissionNC
e 14 15  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 5 6  CRP__LacticAcid
e 6 7  LacticAcid__Leucocytes
e 8 9  AdmissionNC__Leucocytes
e 9 10  Leucocytes__CRP
e 12 13  AdmissionNC__LacticAcid
e 13 14  LacticAcid__CRP
e 15 16  Leucocytes__ReleaseB
e 16 17  ReleaseB__END


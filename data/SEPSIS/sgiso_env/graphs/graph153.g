v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 CRP
v 5 LacticAcid
v 6 Leucocytes
v 7 ERSepsisTriage
v 8 AdmissionIC
v 9 LacticAcid
v 10 Leucocytes
v 11 CRP
v 12 LacticAcid
v 13 Leucocytes
v 14 CRP
v 15 LacticAcid
v 16 AdmissionNC
v 17 ReleaseA
v 18 ReturnER
v 19 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__CRP
e 8 10  AdmissionIC__Leucocytes
e 9 10  LacticAcid__Leucocytes
e 10 11  Leucocytes__CRP
e 16 17  AdmissionNC__ReleaseA
e 17 18  ReleaseA__ReturnER
e 18 19  ReturnER__END
e 4 5  CRP__LacticAcid
e 5 6  LacticAcid__Leucocytes
e 6 7  Leucocytes__ERSepsisTriage
e 7 8  ERSepsisTriage__AdmissionIC
e 7 9  ERSepsisTriage__LacticAcid
e 11 12  CRP__LacticAcid
e 12 13  LacticAcid__Leucocytes
e 13 14  Leucocytes__CRP
e 15 16  LacticAcid__AdmissionNC
e 14 15  CRP__LacticAcid


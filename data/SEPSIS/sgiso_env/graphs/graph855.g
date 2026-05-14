v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 AdmissionNC
v 8 AdmissionIC
v 9 Leucocytes
v 10 CRP
v 11 LacticAcid
v 12 CRP
v 13 LacticAcid
v 14 Leucocytes
v 15 Leucocytes
v 16 CRP
v 17 LacticAcid
v 18 AdmissionNC
v 19 ReleaseA
v 20 ReturnER
v 21 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 5 6  Leucocytes__CRP
e 9 10  Leucocytes__CRP
e 18 19  AdmissionNC__ReleaseA
e 19 20  ReleaseA__ReturnER
e 20 21  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 6 7  CRP__AdmissionNC
e 8 9  AdmissionIC__Leucocytes
e 7 8  AdmissionNC__AdmissionIC
e 10 11  CRP__LacticAcid
e 13 14  LacticAcid__Leucocytes
e 11 12  LacticAcid__CRP
e 12 13  CRP__LacticAcid
e 14 15  Leucocytes__Leucocytes
e 17 18  LacticAcid__AdmissionNC
e 15 16  Leucocytes__CRP
e 16 17  CRP__LacticAcid


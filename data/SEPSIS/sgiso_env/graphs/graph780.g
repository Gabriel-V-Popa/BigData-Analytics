v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 LacticAcid
v 6 Leucocytes
v 7 CRP
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 CRP
v 11 Leucocytes
v 12 CRP
v 13 Leucocytes
v 14 CRP
v 15 Leucocytes
v 16 CRP
v 17 Leucocytes
v 18 CRP
v 19 CRP
v 20 Leucocytes
v 21 ReleaseA
v 22 ReturnER
v 23 CRP
v 24 Leucocytes
v 25 LacticAcid
v 26 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 9 10  AdmissionNC__CRP
e 10 11  CRP__Leucocytes
e 11 12  Leucocytes__CRP
e 12 13  CRP__Leucocytes
e 13 14  Leucocytes__CRP
e 14 15  CRP__Leucocytes
e 15 16  Leucocytes__CRP
e 16 17  CRP__Leucocytes
e 17 18  Leucocytes__CRP
e 20 21  Leucocytes__ReleaseA
e 21 22  ReleaseA__ReturnER
e 22 23  ReturnER__CRP
e 23 24  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__LacticAcid
e 5 6  LacticAcid__Leucocytes
e 6 7  Leucocytes__CRP
e 8 9  IVAntibiotics__AdmissionNC
e 7 8  CRP__IVAntibiotics
e 18 19  CRP__CRP
e 19 20  CRP__Leucocytes
e 24 25  Leucocytes__LacticAcid
e 25 26  LacticAcid__END


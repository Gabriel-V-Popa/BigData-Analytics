v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 LacticAcid
v 6 CRP
v 7 Leucocytes
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 CRP
v 11 Leucocytes
v 12 CRP
v 13 Leucocytes
v 14 Leucocytes
v 15 CRP
v 16 Leucocytes
v 17 CRP
v 18 CRP
v 19 Leucocytes
v 20 Leucocytes
v 21 CRP
v 22 Leucocytes
v 23 CRP
v 24 CRP
v 25 CRP
v 26 Leucocytes
v 27 ReleaseA
v 28 ReturnER
v 29 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  CRP__Leucocytes
e 9 10  AdmissionNC__CRP
e 10 11  CRP__Leucocytes
e 11 12  Leucocytes__CRP
e 12 13  CRP__Leucocytes
e 15 16  CRP__Leucocytes
e 16 17  Leucocytes__CRP
e 21 22  CRP__Leucocytes
e 22 23  Leucocytes__CRP
e 26 27  Leucocytes__ReleaseA
e 27 28  ReleaseA__ReturnER
e 28 29  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 5 6  LacticAcid__CRP
e 4 5  ERSepsisTriage__LacticAcid
e 7 8  Leucocytes__IVAntibiotics
e 8 9  IVAntibiotics__AdmissionNC
e 13 14  Leucocytes__Leucocytes
e 14 15  Leucocytes__CRP
e 17 18  CRP__CRP
e 18 19  CRP__Leucocytes
e 19 20  Leucocytes__Leucocytes
e 20 21  Leucocytes__CRP
e 23 24  CRP__CRP
e 25 26  CRP__Leucocytes
e 24 25  CRP__CRP


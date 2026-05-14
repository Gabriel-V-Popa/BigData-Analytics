v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 LacticAcid
v 6 CRP
v 7 Leucocytes
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 Leucocytes
v 11 CRP
v 12 AdmissionNC
v 13 Leucocytes
v 14 CRP
v 15 Leucocytes
v 16 CRP
v 17 Leucocytes
v 18 CRP
v 19 CRP
v 20 Leucocytes
v 21 CRP
v 22 Leucocytes
v 23 Leucocytes
v 24 CRP
v 25 ReleaseA
v 26 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  CRP__Leucocytes
e 13 14  Leucocytes__CRP
e 14 15  CRP__Leucocytes
e 15 16  Leucocytes__CRP
e 16 17  CRP__Leucocytes
e 17 18  Leucocytes__CRP
e 20 21  Leucocytes__CRP
e 21 22  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 5 6  LacticAcid__CRP
e 4 5  ERSepsisTriage__LacticAcid
e 7 8  Leucocytes__IVAntibiotics
e 8 9  IVAntibiotics__AdmissionNC
e 9 10  AdmissionNC__Leucocytes
e 10 11  Leucocytes__CRP
e 11 12  CRP__AdmissionNC
e 12 13  AdmissionNC__Leucocytes
e 18 19  CRP__CRP
e 19 20  CRP__Leucocytes
e 22 23  Leucocytes__Leucocytes
e 25 26  ReleaseA__END
e 23 24  Leucocytes__CRP
e 24 25  CRP__ReleaseA


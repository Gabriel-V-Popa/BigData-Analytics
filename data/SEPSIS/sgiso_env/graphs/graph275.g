v 1 START
v 2 ERRegistration
v 3 Leucocytes
v 4 CRP
v 5 LacticAcid
v 6 ERTriage
v 7 ERSepsisTriage
v 8 IVAntibiotics
v 9 AdmissionIC
v 10 LacticAcid
v 11 Leucocytes
v 12 CRP
v 13 LacticAcid
v 14 Leucocytes
v 15 CRP
v 16 CRP
v 17 Leucocytes
v 18 LacticAcid
v 19 AdmissionNC
v 20 Leucocytes
v 21 CRP
v 22 Leucocytes
v 23 CRP
v 24 ReleaseA
v 25 END
e 1 2  START__ERRegistration
e 8 9  IVAntibiotics__AdmissionIC
e 8 10  IVAntibiotics__LacticAcid
e 9 11  AdmissionIC__Leucocytes
e 10 11  LacticAcid__Leucocytes
e 11 12  Leucocytes__CRP
e 14 15  Leucocytes__CRP
e 21 22  CRP__Leucocytes
e 7 8  ERSepsisTriage__IVAntibiotics
e 2 3  ERRegistration__Leucocytes
e 3 4  Leucocytes__CRP
e 4 5  CRP__LacticAcid
e 6 7  ERTriage__ERSepsisTriage
e 5 6  LacticAcid__ERTriage
e 12 13  CRP__LacticAcid
e 13 14  LacticAcid__Leucocytes
e 15 16  CRP__CRP
e 16 17  CRP__Leucocytes
e 17 18  Leucocytes__LacticAcid
e 18 19  LacticAcid__AdmissionNC
e 19 20  AdmissionNC__Leucocytes
e 20 21  Leucocytes__CRP
e 22 23  Leucocytes__CRP
e 24 25  ReleaseA__END
e 23 24  CRP__ReleaseA


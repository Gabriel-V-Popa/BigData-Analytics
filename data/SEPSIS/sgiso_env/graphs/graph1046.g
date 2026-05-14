v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 LacticAcid
v 8 IVAntibiotics
v 9 AdmissionIC
v 10 CRP
v 11 Leucocytes
v 12 LacticAcid
v 13 LacticAcid
v 14 Leucocytes
v 15 Leucocytes
v 16 CRP
v 17 LacticAcid
v 18 Leucocytes
v 19 CRP
v 20 LacticAcid
v 21 LacticAcid
v 22 Leucocytes
v 23 CRP
v 24 AdmissionNC
v 25 CRP
v 26 Leucocytes
v 27 CRP
v 28 CRP
v 29 Leucocytes
v 30 CRP
v 31 ReleaseA
v 32 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 8 9  IVAntibiotics__AdmissionIC
e 8 12  IVAntibiotics__LacticAcid
e 18 19  Leucocytes__CRP
e 24 25  AdmissionNC__CRP
e 25 26  CRP__Leucocytes
e 26 27  Leucocytes__CRP
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__CRP
e 7 8  LacticAcid__IVAntibiotics
e 6 7  CRP__LacticAcid
e 9 10  AdmissionIC__CRP
e 10 11  CRP__Leucocytes
e 12 13  LacticAcid__LacticAcid
e 11 13  Leucocytes__LacticAcid
e 13 14  LacticAcid__Leucocytes
e 14 15  Leucocytes__Leucocytes
e 15 16  Leucocytes__CRP
e 16 17  CRP__LacticAcid
e 17 18  LacticAcid__Leucocytes
e 19 20  CRP__LacticAcid
e 21 22  LacticAcid__Leucocytes
e 20 21  LacticAcid__LacticAcid
e 22 23  Leucocytes__CRP
e 23 24  CRP__AdmissionNC
e 27 28  CRP__CRP
e 28 29  CRP__Leucocytes
e 29 30  Leucocytes__CRP
e 31 32  ReleaseA__END
e 30 31  CRP__ReleaseA


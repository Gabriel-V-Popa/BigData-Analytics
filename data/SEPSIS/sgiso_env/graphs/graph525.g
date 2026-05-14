v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 LacticAcid
v 6 Leucocytes
v 7 CRP
v 8 IVAntibiotics
v 9 AdmissionIC
v 10 LacticAcid
v 11 Leucocytes
v 12 CRP
v 13 Leucocytes
v 14 CRP
v 15 LacticAcid
v 16 Leucocytes
v 17 CRP
v 18 LacticAcid
v 19 CRP
v 20 Leucocytes
v 21 LacticAcid
v 22 CRP
v 23 Leucocytes
v 24 LacticAcid
v 25 LacticAcid
v 26 Leucocytes
v 27 CRP
v 28 Leucocytes
v 29 CRP
v 30 LacticAcid
v 31 AdmissionNC
v 32 CRP
v 33 Leucocytes
v 34 CRP
v 35 Leucocytes
v 36 Leucocytes
v 37 AdmissionNC
v 38 ReleaseA
v 39 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 8 9  IVAntibiotics__AdmissionIC
e 8 10  IVAntibiotics__LacticAcid
e 9 11  AdmissionIC__Leucocytes
e 10 11  LacticAcid__Leucocytes
e 11 12  Leucocytes__CRP
e 12 13  CRP__Leucocytes
e 13 14  Leucocytes__CRP
e 16 17  Leucocytes__CRP
e 22 23  CRP__Leucocytes
e 26 27  Leucocytes__CRP
e 27 28  CRP__Leucocytes
e 31 32  AdmissionNC__CRP
e 32 33  CRP__Leucocytes
e 33 34  Leucocytes__CRP
e 34 35  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 23 24  Leucocytes__LacticAcid
e 4 5  ERSepsisTriage__LacticAcid
e 5 6  LacticAcid__Leucocytes
e 6 7  Leucocytes__CRP
e 7 8  CRP__IVAntibiotics
e 14 15  CRP__LacticAcid
e 15 16  LacticAcid__Leucocytes
e 17 18  CRP__LacticAcid
e 19 20  CRP__Leucocytes
e 18 19  LacticAcid__CRP
e 20 21  Leucocytes__LacticAcid
e 21 22  LacticAcid__CRP
e 24 25  LacticAcid__LacticAcid
e 25 26  LacticAcid__Leucocytes
e 28 29  Leucocytes__CRP
e 30 31  LacticAcid__AdmissionNC
e 29 30  CRP__LacticAcid
e 35 36  Leucocytes__Leucocytes
e 36 37  Leucocytes__AdmissionNC
e 37 38  AdmissionNC__ReleaseA
e 38 39  ReleaseA__END


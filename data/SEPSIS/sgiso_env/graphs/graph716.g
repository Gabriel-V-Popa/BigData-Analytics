v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 LacticAcid
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 CRP
v 11 Leucocytes
v 12 AdmissionIC
v 13 Leucocytes
v 14 CRP
v 15 LacticAcid
v 16 Leucocytes
v 17 CRP
v 18 LacticAcid
v 19 LacticAcid
v 20 CRP
v 21 Leucocytes
v 22 Leucocytes
v 23 CRP
v 24 LacticAcid
v 25 CRP
v 26 LacticAcid
v 27 Leucocytes
v 28 LacticAcid
v 29 CRP
v 30 Leucocytes
v 31 LacticAcid
v 32 Leucocytes
v 33 CRP
v 34 Leucocytes
v 35 LacticAcid
v 36 CRP
v 37 AdmissionNC
v 38 ReleaseA
v 39 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 9 10  AdmissionNC__CRP
e 10 11  CRP__Leucocytes
e 15 16  LacticAcid__Leucocytes
e 16 17  Leucocytes__CRP
e 29 30  CRP__Leucocytes
e 31 32  LacticAcid__Leucocytes
e 32 33  Leucocytes__CRP
e 33 34  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 11 12  Leucocytes__AdmissionIC
e 11 15  Leucocytes__LacticAcid
e 30 31  Leucocytes__LacticAcid
e 5 6  Leucocytes__CRP
e 8 9  IVAntibiotics__AdmissionNC
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__IVAntibiotics
e 14 16  CRP__Leucocytes
e 12 13  AdmissionIC__Leucocytes
e 13 14  Leucocytes__CRP
e 17 18  CRP__LacticAcid
e 20 21  CRP__Leucocytes
e 18 19  LacticAcid__LacticAcid
e 19 20  LacticAcid__CRP
e 21 22  Leucocytes__Leucocytes
e 22 23  Leucocytes__CRP
e 23 24  CRP__LacticAcid
e 26 27  LacticAcid__Leucocytes
e 24 25  LacticAcid__CRP
e 25 26  CRP__LacticAcid
e 27 28  Leucocytes__LacticAcid
e 28 29  LacticAcid__CRP
e 34 35  Leucocytes__LacticAcid
e 36 37  CRP__AdmissionNC
e 35 36  LacticAcid__CRP
e 37 38  AdmissionNC__ReleaseA
e 38 39  ReleaseA__END


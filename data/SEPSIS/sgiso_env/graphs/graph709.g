v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 LacticAcid
v 6 Leucocytes
v 7 CRP
v 8 IVAntibiotics
v 9 AdmissionIC
v 10 CRP
v 11 Leucocytes
v 12 LacticAcid
v 13 Leucocytes
v 14 CRP
v 15 LacticAcid
v 16 AdmissionNC
v 17 AdmissionNC
v 18 Leucocytes
v 19 CRP
v 20 CRP
v 21 Leucocytes
v 22 ReleaseA
v 23 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 8 9  IVAntibiotics__AdmissionIC
e 8 12  IVAntibiotics__LacticAcid
e 12 13  LacticAcid__Leucocytes
e 13 14  Leucocytes__CRP
e 18 19  Leucocytes__CRP
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__LacticAcid
e 5 6  LacticAcid__Leucocytes
e 6 7  Leucocytes__CRP
e 7 8  CRP__IVAntibiotics
e 11 13  Leucocytes__Leucocytes
e 9 10  AdmissionIC__CRP
e 10 11  CRP__Leucocytes
e 14 15  CRP__LacticAcid
e 17 18  AdmissionNC__Leucocytes
e 15 16  LacticAcid__AdmissionNC
e 16 17  AdmissionNC__AdmissionNC
e 19 20  CRP__CRP
e 20 21  CRP__Leucocytes
e 21 22  Leucocytes__ReleaseA
e 22 23  ReleaseA__END


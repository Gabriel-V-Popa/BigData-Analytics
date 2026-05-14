v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 CRP
v 7 LacticAcid
v 8 Leucocytes
v 9 IVAntibiotics
v 10 AdmissionIC
v 11 CRP
v 12 Leucocytes
v 13 LacticAcid
v 14 CRP
v 15 LacticAcid
v 16 Leucocytes
v 17 AdmissionIC
v 18 Leucocytes
v 19 CRP
v 20 LacticAcid
v 21 Leucocytes
v 22 Leucocytes
v 23 CRP
v 24 LacticAcid
v 25 AdmissionNC
v 26 ReleaseA
v 27 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 8 9  Leucocytes__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionIC
e 9 13  IVAntibiotics__LacticAcid
e 20 21  LacticAcid__Leucocytes
e 16 17  Leucocytes__AdmissionIC
e 16 20  Leucocytes__LacticAcid
e 3 4  ERTriage__ERSepsisTriage
e 5 6  IVLiquid__CRP
e 4 5  ERSepsisTriage__IVLiquid
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__Leucocytes
e 10 11  AdmissionIC__CRP
e 11 12  CRP__Leucocytes
e 13 14  LacticAcid__CRP
e 12 14  Leucocytes__CRP
e 15 16  LacticAcid__Leucocytes
e 14 15  CRP__LacticAcid
e 19 21  CRP__Leucocytes
e 17 18  AdmissionIC__Leucocytes
e 18 19  Leucocytes__CRP
e 21 22  Leucocytes__Leucocytes
e 24 25  LacticAcid__AdmissionNC
e 22 23  Leucocytes__CRP
e 23 24  CRP__LacticAcid
e 25 26  AdmissionNC__ReleaseA
e 26 27  ReleaseA__END


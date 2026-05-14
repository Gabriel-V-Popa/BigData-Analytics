v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 Leucocytes
v 7 LacticAcid
v 8 CRP
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 AdmissionIC
v 12 CRP
v 13 LacticAcid
v 14 Leucocytes
v 15 LacticAcid
v 16 Leucocytes
v 17 CRP
v 18 AdmissionNC
v 19 CRP
v 20 Leucocytes
v 21 CRP
v 22 LacticAcid
v 23 Leucocytes
v 24 CRP
v 25 LacticAcid
v 26 CRP
v 27 Leucocytes
v 28 Leucocytes
v 29 CRP
v 30 ReleaseA
v 31 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 13 14  LacticAcid__Leucocytes
e 15 16  LacticAcid__Leucocytes
e 18 19  AdmissionNC__CRP
e 19 20  CRP__Leucocytes
e 20 21  Leucocytes__CRP
e 23 24  Leucocytes__CRP
e 3 4  ERTriage__ERSepsisTriage
e 14 15  Leucocytes__LacticAcid
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__Leucocytes
e 6 7  Leucocytes__LacticAcid
e 8 9  CRP__IVAntibiotics
e 7 8  LacticAcid__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__AdmissionIC
e 10 13  AdmissionNC__LacticAcid
e 12 14  CRP__Leucocytes
e 11 12  AdmissionIC__CRP
e 16 17  Leucocytes__CRP
e 17 18  CRP__AdmissionNC
e 21 22  CRP__LacticAcid
e 22 23  LacticAcid__Leucocytes
e 24 25  CRP__LacticAcid
e 26 27  CRP__Leucocytes
e 25 26  LacticAcid__CRP
e 27 28  Leucocytes__Leucocytes
e 30 31  ReleaseA__END
e 28 29  Leucocytes__CRP
e 29 30  CRP__ReleaseA


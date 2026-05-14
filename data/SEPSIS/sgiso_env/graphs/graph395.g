v 1 START
v 2 ERRegistration
v 3 Leucocytes
v 4 CRP
v 5 LacticAcid
v 6 ERTriage
v 7 ERSepsisTriage
v 8 IVAntibiotics
v 9 IVLiquid
v 10 AdmissionNC
v 11 AdmissionIC
v 12 LacticAcid
v 13 CRP
v 14 Leucocytes
v 15 LacticAcid
v 16 CRP
v 17 Leucocytes
v 18 Leucocytes
v 19 CRP
v 20 LacticAcid
v 21 CRP
v 22 Leucocytes
v 23 LacticAcid
v 24 CRP
v 25 LacticAcid
v 26 Leucocytes
v 27 AdmissionNC
v 28 CRP
v 29 ReleaseA
v 30 END
e 1 2  START__ERRegistration
e 16 17  CRP__Leucocytes
e 26 27  Leucocytes__AdmissionNC
e 7 8  ERSepsisTriage__IVAntibiotics
e 2 3  ERRegistration__Leucocytes
e 3 4  Leucocytes__CRP
e 4 5  CRP__LacticAcid
e 6 7  ERTriage__ERSepsisTriage
e 5 6  LacticAcid__ERTriage
e 8 9  IVAntibiotics__IVLiquid
e 10 11  AdmissionNC__AdmissionIC
e 10 12  AdmissionNC__LacticAcid
e 9 10  IVLiquid__AdmissionNC
e 11 13  AdmissionIC__CRP
e 12 13  LacticAcid__CRP
e 13 14  CRP__Leucocytes
e 14 15  Leucocytes__LacticAcid
e 15 16  LacticAcid__CRP
e 17 18  Leucocytes__Leucocytes
e 18 19  Leucocytes__CRP
e 19 20  CRP__LacticAcid
e 21 22  CRP__Leucocytes
e 20 21  LacticAcid__CRP
e 22 23  Leucocytes__LacticAcid
e 23 24  LacticAcid__CRP
e 24 25  CRP__LacticAcid
e 25 26  LacticAcid__Leucocytes
e 27 28  AdmissionNC__CRP
e 29 30  ReleaseA__END
e 28 29  CRP__ReleaseA


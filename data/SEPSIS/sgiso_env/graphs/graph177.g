v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 Leucocytes
v 7 LacticAcid
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionIC
v 11 LacticAcid
v 12 Leucocytes
v 13 LacticAcid
v 14 CRP
v 15 LacticAcid
v 16 CRP
v 17 LacticAcid
v 18 Leucocytes
v 19 LacticAcid
v 20 Leucocytes
v 21 CRP
v 22 AdmissionNC
v 23 Leucocytes
v 24 CRP
v 25 AdmissionNC
v 26 CRP
v 27 Leucocytes
v 28 CRP
v 29 CRP
v 30 ReleaseA
v 31 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 9 10  IVAntibiotics__AdmissionIC
e 9 11  IVAntibiotics__LacticAcid
e 10 12  AdmissionIC__Leucocytes
e 11 12  LacticAcid__Leucocytes
e 19 20  LacticAcid__Leucocytes
e 20 21  Leucocytes__CRP
e 25 26  AdmissionNC__CRP
e 26 27  CRP__Leucocytes
e 18 19  Leucocytes__LacticAcid
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 6 7  Leucocytes__LacticAcid
e 8 9  IVLiquid__IVAntibiotics
e 7 8  LacticAcid__IVLiquid
e 12 13  Leucocytes__LacticAcid
e 13 14  LacticAcid__CRP
e 14 15  CRP__LacticAcid
e 17 18  LacticAcid__Leucocytes
e 15 16  LacticAcid__CRP
e 16 17  CRP__LacticAcid
e 21 22  CRP__AdmissionNC
e 22 23  AdmissionNC__Leucocytes
e 23 24  Leucocytes__CRP
e 24 25  CRP__AdmissionNC
e 27 28  Leucocytes__CRP
e 30 31  ReleaseA__END
e 28 29  CRP__CRP
e 29 30  CRP__ReleaseA


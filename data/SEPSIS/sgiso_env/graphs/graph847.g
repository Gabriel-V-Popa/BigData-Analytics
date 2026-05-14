v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 IVAntibiotics
v 7 Leucocytes
v 8 LacticAcid
v 9 CRP
v 10 AdmissionIC
v 11 LacticAcid
v 12 CRP
v 13 LacticAcid
v 14 Leucocytes
v 15 LacticAcid
v 16 CRP
v 17 Leucocytes
v 18 AdmissionNC
v 19 Leucocytes
v 20 CRP
v 21 ReleaseA
v 22 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 16 17  CRP__Leucocytes
e 17 18  Leucocytes__AdmissionNC
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__IVAntibiotics
e 6 7  IVAntibiotics__Leucocytes
e 7 8  Leucocytes__LacticAcid
e 7 10  Leucocytes__AdmissionIC
e 8 9  LacticAcid__CRP
e 10 11  AdmissionIC__LacticAcid
e 9 11  CRP__LacticAcid
e 13 14  LacticAcid__Leucocytes
e 11 12  LacticAcid__CRP
e 12 13  CRP__LacticAcid
e 14 15  Leucocytes__LacticAcid
e 15 16  LacticAcid__CRP
e 18 19  AdmissionNC__Leucocytes
e 21 22  ReleaseA__END
e 19 20  Leucocytes__CRP
e 20 21  CRP__ReleaseA


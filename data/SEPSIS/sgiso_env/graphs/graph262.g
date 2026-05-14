v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 LacticAcid
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionIC
v 11 LacticAcid
v 12 Leucocytes
v 13 CRP
v 14 LacticAcid
v 15 CRP
v 16 LacticAcid
v 17 Leucocytes
v 18 AdmissionNC
v 19 CRP
v 20 Leucocytes
v 21 CRP
v 22 ReleaseA
v 23 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 9 10  IVAntibiotics__AdmissionIC
e 9 11  IVAntibiotics__LacticAcid
e 10 12  AdmissionIC__Leucocytes
e 11 12  LacticAcid__Leucocytes
e 12 13  Leucocytes__CRP
e 17 18  Leucocytes__AdmissionNC
e 18 19  AdmissionNC__CRP
e 19 20  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__CRP
e 8 9  IVLiquid__IVAntibiotics
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__IVLiquid
e 13 14  CRP__LacticAcid
e 16 17  LacticAcid__Leucocytes
e 14 15  LacticAcid__CRP
e 15 16  CRP__LacticAcid
e 20 21  Leucocytes__CRP
e 22 23  ReleaseA__END
e 21 22  CRP__ReleaseA


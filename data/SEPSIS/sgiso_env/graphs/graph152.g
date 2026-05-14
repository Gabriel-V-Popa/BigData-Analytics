v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 LacticAcid
v 6 CRP
v 7 Leucocytes
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionIC
v 11 Leucocytes
v 12 CRP
v 13 LacticAcid
v 14 LacticAcid
v 15 CRP
v 16 Leucocytes
v 17 CRP
v 18 LacticAcid
v 19 Leucocytes
v 20 ReleaseA
v 21 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  CRP__Leucocytes
e 9 10  IVAntibiotics__AdmissionIC
e 9 13  IVAntibiotics__LacticAcid
e 16 17  Leucocytes__CRP
e 3 4  ERTriage__ERSepsisTriage
e 5 6  LacticAcid__CRP
e 4 5  ERSepsisTriage__LacticAcid
e 7 8  Leucocytes__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 10 11  AdmissionIC__Leucocytes
e 11 12  Leucocytes__CRP
e 13 14  LacticAcid__LacticAcid
e 12 14  CRP__LacticAcid
e 15 16  CRP__Leucocytes
e 14 15  LacticAcid__CRP
e 17 18  CRP__LacticAcid
e 18 19  LacticAcid__Leucocytes
e 19 20  Leucocytes__ReleaseA
e 20 21  ReleaseA__END


v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 LacticAcid
v 6 Leucocytes
v 7 CRP
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionIC
v 11 Leucocytes
v 12 LacticAcid
v 13 CRP
v 14 AdmissionNC
v 15 Leucocytes
v 16 CRP
v 17 ReleaseA
v 18 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 9 10  IVAntibiotics__AdmissionIC
e 9 12  IVAntibiotics__LacticAcid
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__LacticAcid
e 5 6  LacticAcid__Leucocytes
e 6 7  Leucocytes__CRP
e 8 9  IVLiquid__IVAntibiotics
e 7 8  CRP__IVLiquid
e 10 11  AdmissionIC__Leucocytes
e 12 13  LacticAcid__CRP
e 11 13  Leucocytes__CRP
e 14 15  AdmissionNC__Leucocytes
e 13 14  CRP__AdmissionNC
e 15 16  Leucocytes__CRP
e 17 18  ReleaseA__END
e 16 17  CRP__ReleaseA


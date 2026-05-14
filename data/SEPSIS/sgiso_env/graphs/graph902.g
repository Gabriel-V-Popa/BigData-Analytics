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
v 11 Leucocytes
v 12 LacticAcid
v 13 CRP
v 14 AdmissionNC
v 15 CRP
v 16 Leucocytes
v 17 Leucocytes
v 18 ReleaseA
v 19 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 10 11  AdmissionIC__Leucocytes
e 14 15  AdmissionNC__CRP
e 15 16  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__IVAntibiotics
e 6 7  IVAntibiotics__Leucocytes
e 7 8  Leucocytes__LacticAcid
e 7 10  Leucocytes__AdmissionIC
e 9 11  CRP__Leucocytes
e 8 9  LacticAcid__CRP
e 11 12  Leucocytes__LacticAcid
e 13 14  CRP__AdmissionNC
e 12 13  LacticAcid__CRP
e 16 17  Leucocytes__Leucocytes
e 18 19  ReleaseA__END
e 17 18  Leucocytes__ReleaseA


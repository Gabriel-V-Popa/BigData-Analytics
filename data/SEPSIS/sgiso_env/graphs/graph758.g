v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 Leucocytes
v 5 LacticAcid
v 6 CRP
v 7 AdmissionIC
v 8 ERSepsisTriage
v 9 IVLiquid
v 10 IVAntibiotics
v 11 Leucocytes
v 12 LacticAcid
v 13 CRP
v 14 CRP
v 15 LacticAcid
v 16 Leucocytes
v 17 AdmissionNC
v 18 Leucocytes
v 19 CRP
v 20 ReleaseA
v 21 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 16 17  Leucocytes__AdmissionNC
e 3 4  ERTriage__Leucocytes
e 5 6  LacticAcid__CRP
e 4 5  Leucocytes__LacticAcid
e 6 7  CRP__AdmissionIC
e 7 8  AdmissionIC__ERSepsisTriage
e 8 9  ERSepsisTriage__IVLiquid
e 10 11  IVAntibiotics__Leucocytes
e 9 10  IVLiquid__IVAntibiotics
e 11 12  Leucocytes__LacticAcid
e 12 13  LacticAcid__CRP
e 13 14  CRP__CRP
e 15 16  LacticAcid__Leucocytes
e 14 15  CRP__LacticAcid
e 17 18  AdmissionNC__Leucocytes
e 20 21  ReleaseA__END
e 18 19  Leucocytes__CRP
e 19 20  CRP__ReleaseA


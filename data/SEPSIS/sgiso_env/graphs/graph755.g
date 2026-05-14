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
v 11 CRP
v 12 Leucocytes
v 13 LacticAcid
v 14 LacticAcid
v 15 CRP
v 16 Leucocytes
v 17 Leucocytes
v 18 CRP
v 19 LacticAcid
v 20 ReleaseE
v 21 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 10 11  AdmissionNC__CRP
e 11 12  CRP__Leucocytes
e 15 16  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__Leucocytes
e 6 7  Leucocytes__LacticAcid
e 9 10  IVAntibiotics__AdmissionNC
e 7 8  LacticAcid__CRP
e 8 9  CRP__IVAntibiotics
e 12 13  Leucocytes__LacticAcid
e 14 15  LacticAcid__CRP
e 13 14  LacticAcid__LacticAcid
e 16 17  Leucocytes__Leucocytes
e 20 21  ReleaseE__END
e 17 18  Leucocytes__CRP
e 18 19  CRP__LacticAcid
e 19 20  LacticAcid__ReleaseE


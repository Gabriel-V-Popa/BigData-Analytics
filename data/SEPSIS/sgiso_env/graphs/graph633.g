v 1 START
v 2 ERRegistration
v 3 IVLiquid
v 4 ERTriage
v 5 ERSepsisTriage
v 6 LacticAcid
v 7 Leucocytes
v 8 CRP
v 9 IVAntibiotics
v 10 AdmissionIC
v 11 LacticAcid
v 12 Leucocytes
v 13 LacticAcid
v 14 CRP
v 15 AdmissionNC
v 16 CRP
v 17 Leucocytes
v 18 ReleaseA
v 19 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__IVLiquid
e 9 10  IVAntibiotics__AdmissionIC
e 9 11  IVAntibiotics__LacticAcid
e 10 12  AdmissionIC__Leucocytes
e 11 12  LacticAcid__Leucocytes
e 15 16  AdmissionNC__CRP
e 16 17  CRP__Leucocytes
e 3 4  IVLiquid__ERTriage
e 4 5  ERTriage__ERSepsisTriage
e 5 6  ERSepsisTriage__LacticAcid
e 6 7  LacticAcid__Leucocytes
e 7 8  Leucocytes__CRP
e 8 9  CRP__IVAntibiotics
e 12 13  Leucocytes__LacticAcid
e 14 15  CRP__AdmissionNC
e 13 14  LacticAcid__CRP
e 17 18  Leucocytes__ReleaseA
e 18 19  ReleaseA__END


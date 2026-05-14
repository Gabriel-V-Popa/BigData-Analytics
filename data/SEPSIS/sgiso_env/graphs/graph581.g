v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 IVAntibiotics
v 7 Leucocytes
v 8 LacticAcid
v 9 CRP
v 10 AdmissionNC
v 11 CRP
v 12 LacticAcid
v 13 Leucocytes
v 14 Leucocytes
v 15 CRP
v 16 ReleaseA
v 17 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 10 11  AdmissionNC__CRP
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVLiquid
e 6 7  IVAntibiotics__Leucocytes
e 5 6  IVLiquid__IVAntibiotics
e 7 8  Leucocytes__LacticAcid
e 9 10  CRP__AdmissionNC
e 8 9  LacticAcid__CRP
e 11 12  CRP__LacticAcid
e 12 13  LacticAcid__Leucocytes
e 13 14  Leucocytes__Leucocytes
e 16 17  ReleaseA__END
e 14 15  Leucocytes__CRP
e 15 16  CRP__ReleaseA


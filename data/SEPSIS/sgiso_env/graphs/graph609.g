v 1 START
v 2 Leucocytes
v 3 CRP
v 4 ERRegistration
v 5 ERTriage
v 6 ERSepsisTriage
v 7 IVLiquid
v 8 LacticAcid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 AdmissionNC
v 12 CRP
v 13 Leucocytes
v 14 CRP
v 15 CRP
v 16 ReleaseA
v 17 END
e 4 5  ERRegistration__ERTriage
e 12 13  CRP__Leucocytes
e 1 2  START__Leucocytes
e 3 4  CRP__ERRegistration
e 2 3  Leucocytes__CRP
e 5 6  ERTriage__ERSepsisTriage
e 11 12  AdmissionNC__CRP
e 6 7  ERSepsisTriage__IVLiquid
e 7 8  IVLiquid__LacticAcid
e 8 9  LacticAcid__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__AdmissionNC
e 13 14  Leucocytes__CRP
e 16 17  ReleaseA__END
e 14 15  CRP__CRP
e 15 16  CRP__ReleaseA


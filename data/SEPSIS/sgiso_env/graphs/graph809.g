v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 LacticAcid
v 7 CRP
v 8 Leucocytes
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 Leucocytes
v 12 CRP
v 13 AdmissionNC
v 14 CRP
v 15 ReleaseA
v 16 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 7 8  CRP__Leucocytes
e 8 9  Leucocytes__IVAntibiotics
e 3 4  ERTriage__ERSepsisTriage
e 6 7  LacticAcid__CRP
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__LacticAcid
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__Leucocytes
e 11 12  Leucocytes__CRP
e 12 13  CRP__AdmissionNC
e 13 14  AdmissionNC__CRP
e 15 16  ReleaseA__END
e 14 15  CRP__ReleaseA


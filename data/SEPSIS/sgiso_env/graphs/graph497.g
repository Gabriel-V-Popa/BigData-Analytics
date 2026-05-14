v 1 START
v 2 IVLiquid
v 3 ERRegistration
v 4 ERTriage
v 5 ERSepsisTriage
v 6 IVAntibiotics
v 7 CRP
v 8 Leucocytes
v 9 LacticAcid
v 10 AdmissionNC
v 11 AdmissionNC
v 12 Leucocytes
v 13 CRP
v 14 Leucocytes
v 15 CRP
v 16 ReleaseA
v 17 END
e 3 4  ERRegistration__ERTriage
e 7 8  CRP__Leucocytes
e 13 14  CRP__Leucocytes
e 1 2  START__IVLiquid
e 2 3  IVLiquid__ERRegistration
e 4 5  ERTriage__ERSepsisTriage
e 6 7  IVAntibiotics__CRP
e 5 6  ERSepsisTriage__IVAntibiotics
e 8 9  Leucocytes__LacticAcid
e 9 10  LacticAcid__AdmissionNC
e 10 11  AdmissionNC__AdmissionNC
e 12 13  Leucocytes__CRP
e 11 12  AdmissionNC__Leucocytes
e 14 15  Leucocytes__CRP
e 16 17  ReleaseA__END
e 15 16  CRP__ReleaseA


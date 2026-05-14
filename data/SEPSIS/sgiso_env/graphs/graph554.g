v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVAntibiotics
v 6 IVLiquid
v 7 LacticAcid
v 8 CRP
v 9 Leucocytes
v 10 AdmissionNC
v 11 AdmissionNC
v 12 Leucocytes
v 13 CRP
v 14 Leucocytes
v 15 CRP
v 16 ReleaseA
v 17 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 8 9  CRP__Leucocytes
e 9 10  Leucocytes__AdmissionNC
e 13 14  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 7 8  LacticAcid__CRP
e 4 5  ERSepsisTriage__IVAntibiotics
e 5 6  IVAntibiotics__IVLiquid
e 6 7  IVLiquid__LacticAcid
e 10 11  AdmissionNC__AdmissionNC
e 12 13  Leucocytes__CRP
e 11 12  AdmissionNC__Leucocytes
e 14 15  Leucocytes__CRP
e 16 17  ReleaseA__END
e 15 16  CRP__ReleaseA


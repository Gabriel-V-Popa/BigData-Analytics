v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 IVAntibiotics
v 7 Leucocytes
v 8 CRP
v 9 LacticAcid
v 10 AdmissionNC
v 11 CRP
v 12 AdmissionNC
v 13 CRP
v 14 ReleaseA
v 15 ReturnER
v 16 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 10 11  AdmissionNC__CRP
e 14 15  ReleaseA__ReturnER
e 15 16  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 11 12  CRP__AdmissionNC
e 4 5  ERSepsisTriage__IVLiquid
e 6 7  IVAntibiotics__Leucocytes
e 5 6  IVLiquid__IVAntibiotics
e 7 8  Leucocytes__CRP
e 9 10  LacticAcid__AdmissionNC
e 8 9  CRP__LacticAcid
e 12 13  AdmissionNC__CRP
e 13 14  CRP__ReleaseA


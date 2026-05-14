v 1 START
v 2 ERTriage
v 3 ERRegistration
v 4 ERSepsisTriage
v 5 CRP
v 6 Leucocytes
v 7 LacticAcid
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 Leucocytes
v 12 CRP
v 13 AdmissionNC
v 14 ReleaseA
v 15 ReturnER
v 16 END
e 5 6  CRP__Leucocytes
e 13 14  AdmissionNC__ReleaseA
e 14 15  ReleaseA__ReturnER
e 15 16  ReturnER__END
e 6 7  Leucocytes__LacticAcid
e 1 2  START__ERTriage
e 2 3  ERTriage__ERRegistration
e 3 4  ERRegistration__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 7 8  LacticAcid__IVLiquid
e 10 11  AdmissionNC__Leucocytes
e 8 9  IVLiquid__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 11 12  Leucocytes__CRP
e 12 13  CRP__AdmissionNC


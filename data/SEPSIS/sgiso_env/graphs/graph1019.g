v 1 START
v 2 ERRegistration
v 3 CRP
v 4 LacticAcid
v 5 Leucocytes
v 6 ERTriage
v 7 ERSepsisTriage
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 AdmissionNC
v 12 AdmissionNC
v 13 ReleaseA
v 14 ReturnER
v 15 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__CRP
e 13 14  ReleaseA__ReturnER
e 14 15  ReturnER__END
e 3 4  CRP__LacticAcid
e 4 5  LacticAcid__Leucocytes
e 5 6  Leucocytes__ERTriage
e 9 10  IVAntibiotics__AdmissionNC
e 6 7  ERTriage__ERSepsisTriage
e 7 8  ERSepsisTriage__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 10 11  AdmissionNC__AdmissionNC
e 12 13  AdmissionNC__ReleaseA
e 11 12  AdmissionNC__AdmissionNC


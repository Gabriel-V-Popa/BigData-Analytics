v 1 START
v 2 ERTriage
v 3 ERRegistration
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 IVAntibiotics
v 7 Leucocytes
v 8 CRP
v 9 LacticAcid
v 10 AdmissionNC
v 11 Leucocytes
v 12 ReleaseA
v 13 ReturnER
v 14 END
e 11 12  Leucocytes__ReleaseA
e 12 13  ReleaseA__ReturnER
e 13 14  ReturnER__END
e 1 2  START__ERTriage
e 2 3  ERTriage__ERRegistration
e 3 4  ERRegistration__ERSepsisTriage
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__IVAntibiotics
e 7 8  Leucocytes__CRP
e 6 7  IVAntibiotics__Leucocytes
e 8 9  CRP__LacticAcid
e 10 11  AdmissionNC__Leucocytes
e 9 10  LacticAcid__AdmissionNC


v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 CRP
v 5 LacticAcid
v 6 Leucocytes
v 7 ERSepsisTriage
v 8 IVAntibiotics
v 9 IVLiquid
v 10 AdmissionNC
v 11 AdmissionNC
v 12 ReleaseA
v 13 ReturnER
v 14 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__CRP
e 12 13  ReleaseA__ReturnER
e 13 14  ReturnER__END
e 4 5  CRP__LacticAcid
e 5 6  LacticAcid__Leucocytes
e 6 7  Leucocytes__ERSepsisTriage
e 9 10  IVLiquid__AdmissionNC
e 7 8  ERSepsisTriage__IVAntibiotics
e 8 9  IVAntibiotics__IVLiquid
e 10 11  AdmissionNC__AdmissionNC
e 11 12  AdmissionNC__ReleaseA


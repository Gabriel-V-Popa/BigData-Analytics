v 1 START
v 2 IVLiquid
v 3 ERRegistration
v 4 ERTriage
v 5 ERSepsisTriage
v 6 LacticAcid
v 7 CRP
v 8 Leucocytes
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 AdmissionNC
v 12 ReleaseA
v 13 ReturnER
v 14 END
e 3 4  ERRegistration__ERTriage
e 7 8  CRP__Leucocytes
e 12 13  ReleaseA__ReturnER
e 13 14  ReturnER__END
e 1 2  START__IVLiquid
e 2 3  IVLiquid__ERRegistration
e 4 5  ERTriage__ERSepsisTriage
e 6 7  LacticAcid__CRP
e 5 6  ERSepsisTriage__LacticAcid
e 8 9  Leucocytes__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__AdmissionNC
e 11 12  AdmissionNC__ReleaseA


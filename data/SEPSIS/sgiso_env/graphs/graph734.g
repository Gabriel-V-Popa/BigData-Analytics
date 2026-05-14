v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 LacticAcid
v 7 CRP
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 ReleaseA
v 12 ReturnER
v 13 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 10 11  AdmissionNC__ReleaseA
e 11 12  ReleaseA__ReturnER
e 12 13  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__LacticAcid
e 9 10  IVAntibiotics__AdmissionNC
e 6 7  LacticAcid__CRP
e 7 8  CRP__IVLiquid
e 8 9  IVLiquid__IVAntibiotics


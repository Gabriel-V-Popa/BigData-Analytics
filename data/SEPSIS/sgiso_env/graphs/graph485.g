v 1 START
v 2 IVLiquid
v 3 ERRegistration
v 4 ERTriage
v 5 ERSepsisTriage
v 6 Leucocytes
v 7 CRP
v 8 LacticAcid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 ReleaseA
v 12 ReturnER
v 13 END
e 3 4  ERRegistration__ERTriage
e 5 6  ERSepsisTriage__Leucocytes
e 10 11  AdmissionNC__ReleaseA
e 11 12  ReleaseA__ReturnER
e 12 13  ReturnER__END
e 4 5  ERTriage__ERSepsisTriage
e 1 2  START__IVLiquid
e 2 3  IVLiquid__ERRegistration
e 6 7  Leucocytes__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 7 8  CRP__LacticAcid
e 8 9  LacticAcid__IVAntibiotics


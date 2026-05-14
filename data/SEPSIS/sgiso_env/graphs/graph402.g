v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 Leucocytes
v 5 CRP
v 6 LacticAcid
v 7 IVLiquid
v 8 AdmissionNC
v 9 ERSepsisTriage
v 10 IVAntibiotics
v 11 ReleaseA
v 12 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__Leucocytes
e 4 5  Leucocytes__CRP
e 5 6  CRP__LacticAcid
e 8 9  AdmissionNC__ERSepsisTriage
e 6 7  LacticAcid__IVLiquid
e 7 8  IVLiquid__AdmissionNC
e 9 10  ERSepsisTriage__IVAntibiotics
e 11 12  ReleaseA__END
e 10 11  IVAntibiotics__ReleaseA


v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 CRP
v 7 LacticAcid
v 8 Leucocytes
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 ReleaseA
v 12 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__ERSepsisTriage
e 5 6  IVLiquid__CRP
e 4 5  ERSepsisTriage__IVLiquid
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__Leucocytes
e 8 9  Leucocytes__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__ReleaseA
e 11 12  ReleaseA__END


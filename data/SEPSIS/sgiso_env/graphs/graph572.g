v 1 START
v 2 ERRegistration
v 3 LacticAcid
v 4 CRP
v 5 Leucocytes
v 6 ERTriage
v 7 ERSepsisTriage
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 ReleaseA
v 12 END
e 1 2  START__ERRegistration
e 4 5  CRP__Leucocytes
e 2 3  ERRegistration__LacticAcid
e 3 4  LacticAcid__CRP
e 5 6  Leucocytes__ERTriage
e 9 10  IVAntibiotics__AdmissionNC
e 6 7  ERTriage__ERSepsisTriage
e 7 8  ERSepsisTriage__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 10 11  AdmissionNC__ReleaseA
e 11 12  ReleaseA__END


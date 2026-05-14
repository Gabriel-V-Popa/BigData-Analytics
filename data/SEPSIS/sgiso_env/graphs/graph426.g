v 1 START
v 2 ERRegistration
v 3 IVLiquid
v 4 ERTriage
v 5 LacticAcid
v 6 Leucocytes
v 7 CRP
v 8 ERSepsisTriage
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 ReleaseA
v 12 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__IVLiquid
e 7 8  CRP__ERSepsisTriage
e 3 4  IVLiquid__ERTriage
e 6 7  Leucocytes__CRP
e 4 5  ERTriage__LacticAcid
e 5 6  LacticAcid__Leucocytes
e 8 9  ERSepsisTriage__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__ReleaseA
e 11 12  ReleaseA__END


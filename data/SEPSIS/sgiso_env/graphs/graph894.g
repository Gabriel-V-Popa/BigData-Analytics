v 1 START
v 2 ERRegistration
v 3 IVLiquid
v 4 ERTriage
v 5 ERSepsisTriage
v 6 IVAntibiotics
v 7 CRP
v 8 Leucocytes
v 9 LacticAcid
v 10 AdmissionNC
v 11 ReleaseA
v 12 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__IVLiquid
e 7 8  CRP__Leucocytes
e 3 4  IVLiquid__ERTriage
e 6 7  IVAntibiotics__CRP
e 4 5  ERTriage__ERSepsisTriage
e 5 6  ERSepsisTriage__IVAntibiotics
e 8 9  Leucocytes__LacticAcid
e 9 10  LacticAcid__AdmissionNC
e 10 11  AdmissionNC__ReleaseA
e 11 12  ReleaseA__END


v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 IVLiquid
v 5 CRP
v 6 Leucocytes
v 7 LacticAcid
v 8 ERSepsisTriage
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 ReleaseA
v 12 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 3 4  ERTriage__IVLiquid
e 4 5  IVLiquid__CRP
e 6 7  Leucocytes__LacticAcid
e 9 10  IVAntibiotics__AdmissionNC
e 7 8  LacticAcid__ERSepsisTriage
e 8 9  ERSepsisTriage__IVAntibiotics
e 10 11  AdmissionNC__ReleaseA
e 11 12  ReleaseA__END


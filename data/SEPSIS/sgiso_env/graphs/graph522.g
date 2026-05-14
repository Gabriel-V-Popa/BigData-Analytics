v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 LacticAcid
v 6 CRP
v 7 Leucocytes
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 IVLiquid
v 11 CRP
v 12 Leucocytes
v 13 ReleaseA
v 14 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  CRP__Leucocytes
e 9 10  AdmissionNC__IVLiquid
e 10 11  IVLiquid__CRP
e 11 12  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 5 6  LacticAcid__CRP
e 4 5  ERSepsisTriage__LacticAcid
e 7 8  Leucocytes__IVAntibiotics
e 8 9  IVAntibiotics__AdmissionNC
e 12 13  Leucocytes__ReleaseA
e 13 14  ReleaseA__END


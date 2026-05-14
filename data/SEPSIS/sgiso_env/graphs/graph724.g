v 1 START
v 2 ERRegistration
v 3 IVLiquid
v 4 ERTriage
v 5 ERSepsisTriage
v 6 LacticAcid
v 7 Leucocytes
v 8 CRP
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 CRP
v 12 Leucocytes
v 13 ReleaseA
v 14 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__IVLiquid
e 10 11  AdmissionNC__CRP
e 11 12  CRP__Leucocytes
e 3 4  IVLiquid__ERTriage
e 4 5  ERTriage__ERSepsisTriage
e 5 6  ERSepsisTriage__LacticAcid
e 6 7  LacticAcid__Leucocytes
e 7 8  Leucocytes__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 8 9  CRP__IVAntibiotics
e 12 13  Leucocytes__ReleaseA
e 13 14  ReleaseA__END


v 1 START
v 2 ERRegistration
v 3 LacticAcid
v 4 Leucocytes
v 5 CRP
v 6 IVLiquid
v 7 ERTriage
v 8 ERSepsisTriage
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 CRP
v 12 Leucocytes
v 13 ReleaseA
v 14 END
e 1 2  START__ERRegistration
e 10 11  AdmissionNC__CRP
e 11 12  CRP__Leucocytes
e 2 3  ERRegistration__LacticAcid
e 4 5  Leucocytes__CRP
e 3 4  LacticAcid__Leucocytes
e 5 6  CRP__IVLiquid
e 7 8  ERTriage__ERSepsisTriage
e 6 7  IVLiquid__ERTriage
e 8 9  ERSepsisTriage__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 12 13  Leucocytes__ReleaseA
e 13 14  ReleaseA__END


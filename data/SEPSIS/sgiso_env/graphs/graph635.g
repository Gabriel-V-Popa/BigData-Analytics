v 1 START
v 2 Leucocytes
v 3 ERRegistration
v 4 ERTriage
v 5 ERSepsisTriage
v 6 CRP
v 7 LacticAcid
v 8 Leucocytes
v 9 IVLiquid
v 10 IVAntibiotics
v 11 AdmissionNC
v 12 CRP
v 13 Leucocytes
v 14 ReleaseA
v 15 END
e 3 4  ERRegistration__ERTriage
e 8 9  Leucocytes__IVLiquid
e 12 13  CRP__Leucocytes
e 1 2  START__Leucocytes
e 2 3  Leucocytes__ERRegistration
e 4 5  ERTriage__ERSepsisTriage
e 5 6  ERSepsisTriage__CRP
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__Leucocytes
e 9 10  IVLiquid__IVAntibiotics
e 11 12  AdmissionNC__CRP
e 10 11  IVAntibiotics__AdmissionNC
e 13 14  Leucocytes__ReleaseA
e 14 15  ReleaseA__END


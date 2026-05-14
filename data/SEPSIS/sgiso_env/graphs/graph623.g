v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 Leucocytes
v 7 LacticAcid
v 8 CRP
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 AdmissionNC
v 12 CRP
v 13 Leucocytes
v 14 ReleaseA
v 15 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 12 13  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__Leucocytes
e 6 7  Leucocytes__LacticAcid
e 9 10  IVAntibiotics__AdmissionNC
e 7 8  LacticAcid__CRP
e 8 9  CRP__IVAntibiotics
e 10 11  AdmissionNC__AdmissionNC
e 11 12  AdmissionNC__CRP
e 13 14  Leucocytes__ReleaseA
e 14 15  ReleaseA__END


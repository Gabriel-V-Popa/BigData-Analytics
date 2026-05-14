v 1 START
v 2 ERRegistration
v 3 ERSepsisTriage
v 4 IVAntibiotics
v 5 ERTriage
v 6 CRP
v 7 Leucocytes
v 8 LacticAcid
v 9 IVLiquid
v 10 AdmissionNC
v 11 CRP
v 12 Leucocytes
v 13 AdmissionNC
v 14 ReleaseA
v 15 END
e 1 2  START__ERRegistration
e 5 6  ERTriage__CRP
e 6 7  CRP__Leucocytes
e 11 12  CRP__Leucocytes
e 12 13  Leucocytes__AdmissionNC
e 2 3  ERRegistration__ERSepsisTriage
e 4 5  IVAntibiotics__ERTriage
e 3 4  ERSepsisTriage__IVAntibiotics
e 7 8  Leucocytes__LacticAcid
e 8 9  LacticAcid__IVLiquid
e 9 10  IVLiquid__AdmissionNC
e 10 11  AdmissionNC__CRP
e 13 14  AdmissionNC__ReleaseA
e 14 15  ReleaseA__END


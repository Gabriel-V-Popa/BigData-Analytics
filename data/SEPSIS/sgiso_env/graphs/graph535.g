v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 CRP
v 5 LacticAcid
v 6 Leucocytes
v 7 ERSepsisTriage
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 CRP
v 12 Leucocytes
v 13 AdmissionNC
v 14 ReleaseA
v 15 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__CRP
e 11 12  CRP__Leucocytes
e 12 13  Leucocytes__AdmissionNC
e 4 5  CRP__LacticAcid
e 5 6  LacticAcid__Leucocytes
e 6 7  Leucocytes__ERSepsisTriage
e 7 8  ERSepsisTriage__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 10 11  AdmissionNC__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 13 14  AdmissionNC__ReleaseA
e 14 15  ReleaseA__END


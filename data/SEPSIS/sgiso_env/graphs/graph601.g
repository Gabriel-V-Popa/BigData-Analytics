v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 LacticAcid
v 5 Leucocytes
v 6 CRP
v 7 ERSepsisTriage
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 Leucocytes
v 12 CRP
v 13 AdmissionNC
v 14 ReleaseA
v 15 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  CRP__ERSepsisTriage
e 3 4  ERTriage__LacticAcid
e 5 6  Leucocytes__CRP
e 4 5  LacticAcid__Leucocytes
e 7 8  ERSepsisTriage__IVLiquid
e 10 11  AdmissionNC__Leucocytes
e 8 9  IVLiquid__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 11 12  Leucocytes__CRP
e 12 13  CRP__AdmissionNC
e 13 14  AdmissionNC__ReleaseA
e 14 15  ReleaseA__END


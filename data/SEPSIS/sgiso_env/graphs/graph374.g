v 1 START
v 2 ERRegistration
v 3 IVLiquid
v 4 ERTriage
v 5 ERSepsisTriage
v 6 CRP
v 7 LacticAcid
v 8 Leucocytes
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 AdmissionNC
v 12 Leucocytes
v 13 CRP
v 14 AdmissionNC
v 15 ReleaseA
v 16 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__IVLiquid
e 8 9  Leucocytes__IVAntibiotics
e 3 4  IVLiquid__ERTriage
e 5 6  ERSepsisTriage__CRP
e 4 5  ERTriage__ERSepsisTriage
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__Leucocytes
e 9 10  IVAntibiotics__AdmissionNC
e 11 12  AdmissionNC__Leucocytes
e 10 11  AdmissionNC__AdmissionNC
e 12 13  Leucocytes__CRP
e 13 14  CRP__AdmissionNC
e 14 15  AdmissionNC__ReleaseA
e 15 16  ReleaseA__END


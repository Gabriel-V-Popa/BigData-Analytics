v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 LacticAcid
v 6 CRP
v 7 Leucocytes
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionIC
v 11 Leucocytes
v 12 LacticAcid
v 13 CRP
v 14 AdmissionNC
v 15 ReleaseA
v 16 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  CRP__Leucocytes
e 9 10  IVAntibiotics__AdmissionIC
e 10 11  AdmissionIC__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 5 6  LacticAcid__CRP
e 4 5  ERSepsisTriage__LacticAcid
e 7 8  Leucocytes__IVLiquid
e 8 9  IVLiquid__IVAntibiotics
e 11 12  Leucocytes__LacticAcid
e 13 14  CRP__AdmissionNC
e 12 13  LacticAcid__CRP
e 14 15  AdmissionNC__ReleaseA
e 15 16  ReleaseA__END


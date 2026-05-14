v 1 START
v 2 ERRegistration
v 3 CRP
v 4 LacticAcid
v 5 Leucocytes
v 6 ERTriage
v 7 ERSepsisTriage
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 AdmissionNC
v 12 Leucocytes
v 13 CRP
v 14 CRP
v 15 Leucocytes
v 16 ReleaseA
v 17 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__CRP
e 5 6  Leucocytes__ERTriage
e 12 13  Leucocytes__CRP
e 6 7  ERTriage__ERSepsisTriage
e 3 4  CRP__LacticAcid
e 4 5  LacticAcid__Leucocytes
e 7 8  ERSepsisTriage__IVLiquid
e 11 12  AdmissionNC__Leucocytes
e 8 9  IVLiquid__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__AdmissionNC
e 13 14  CRP__CRP
e 14 15  CRP__Leucocytes
e 15 16  Leucocytes__ReleaseA
e 16 17  ReleaseA__END


v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVAntibiotics
v 6 CRP
v 7 LacticAcid
v 8 Leucocytes
v 9 IVLiquid
v 10 AdmissionNC
v 11 CRP
v 12 Leucocytes
v 13 AdmissionNC
v 14 CRP
v 15 Leucocytes
v 16 ReleaseA
v 17 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 8 9  Leucocytes__IVLiquid
e 11 12  CRP__Leucocytes
e 12 13  Leucocytes__AdmissionNC
e 13 14  AdmissionNC__CRP
e 14 15  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 5 6  IVAntibiotics__CRP
e 4 5  ERSepsisTriage__IVAntibiotics
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__Leucocytes
e 9 10  IVLiquid__AdmissionNC
e 10 11  AdmissionNC__CRP
e 15 16  Leucocytes__ReleaseA
e 16 17  ReleaseA__END


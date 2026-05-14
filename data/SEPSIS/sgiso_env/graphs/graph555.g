v 1 START
v 2 ERRegistration
v 3 Leucocytes
v 4 LacticAcid
v 5 CRP
v 6 ERTriage
v 7 ERSepsisTriage
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 AdmissionNC
v 12 CRP
v 13 CRP
v 14 Leucocytes
v 15 CRP
v 16 Leucocytes
v 17 ReleaseA
v 18 END
e 1 2  START__ERRegistration
e 14 15  Leucocytes__CRP
e 15 16  CRP__Leucocytes
e 7 8  ERSepsisTriage__IVLiquid
e 2 3  ERRegistration__Leucocytes
e 4 5  LacticAcid__CRP
e 3 4  Leucocytes__LacticAcid
e 5 6  CRP__ERTriage
e 6 7  ERTriage__ERSepsisTriage
e 8 9  IVLiquid__IVAntibiotics
e 11 12  AdmissionNC__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__AdmissionNC
e 12 13  CRP__CRP
e 13 14  CRP__Leucocytes
e 16 17  Leucocytes__ReleaseA
e 17 18  ReleaseA__END


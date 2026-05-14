v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 LacticAcid
v 7 CRP
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 AdmissionNC
v 12 CRP
v 13 Leucocytes
v 14 AdmissionNC
v 15 CRP
v 16 Leucocytes
v 17 ReleaseA
v 18 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 12 13  CRP__Leucocytes
e 13 14  Leucocytes__AdmissionNC
e 14 15  AdmissionNC__CRP
e 15 16  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__LacticAcid
e 7 8  CRP__IVLiquid
e 6 7  LacticAcid__CRP
e 8 9  IVLiquid__IVAntibiotics
e 11 12  AdmissionNC__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__AdmissionNC
e 16 17  Leucocytes__ReleaseA
e 17 18  ReleaseA__END


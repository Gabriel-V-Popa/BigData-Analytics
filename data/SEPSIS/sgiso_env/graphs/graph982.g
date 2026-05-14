v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 LacticAcid
v 7 Leucocytes
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 AdmissionNC
v 12 CRP
v 13 CRP
v 14 Leucocytes
v 15 Leucocytes
v 16 CRP
v 17 AdmissionNC
v 18 ReleaseA
v 19 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 7 8  Leucocytes__IVLiquid
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 5 6  CRP__LacticAcid
e 6 7  LacticAcid__Leucocytes
e 8 9  IVLiquid__IVAntibiotics
e 11 12  AdmissionNC__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__AdmissionNC
e 12 13  CRP__CRP
e 13 14  CRP__Leucocytes
e 14 15  Leucocytes__Leucocytes
e 16 17  CRP__AdmissionNC
e 15 16  Leucocytes__CRP
e 17 18  AdmissionNC__ReleaseA
e 18 19  ReleaseA__END


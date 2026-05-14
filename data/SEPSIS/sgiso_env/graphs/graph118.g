v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 Leucocytes
v 7 LacticAcid
v 8 IVAntibiotics
v 9 AdmissionNC
v 10 AdmissionNC
v 11 IVLiquid
v 12 CRP
v 13 Leucocytes
v 14 Leucocytes
v 15 CRP
v 16 Leucocytes
v 17 ReleaseA
v 18 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 11 12  IVLiquid__CRP
e 12 13  CRP__Leucocytes
e 15 16  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 6 7  Leucocytes__LacticAcid
e 8 9  IVAntibiotics__AdmissionNC
e 7 8  LacticAcid__IVAntibiotics
e 9 10  AdmissionNC__AdmissionNC
e 10 11  AdmissionNC__IVLiquid
e 13 14  Leucocytes__Leucocytes
e 14 15  Leucocytes__CRP
e 16 17  Leucocytes__ReleaseA
e 17 18  ReleaseA__END


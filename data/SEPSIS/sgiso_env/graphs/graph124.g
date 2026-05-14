v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 IVAntibiotics
v 8 AdmissionNC
v 9 LacticAcid
v 10 AdmissionNC
v 11 AdmissionNC
v 12 IVLiquid
v 13 Leucocytes
v 14 CRP
v 15 CRP
v 16 Leucocytes
v 17 ReleaseB
v 18 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 13 14  Leucocytes__CRP
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__CRP
e 6 7  CRP__IVAntibiotics
e 7 8  IVAntibiotics__AdmissionNC
e 8 9  AdmissionNC__LacticAcid
e 9 10  LacticAcid__AdmissionNC
e 12 13  IVLiquid__Leucocytes
e 10 11  AdmissionNC__AdmissionNC
e 11 12  AdmissionNC__IVLiquid
e 14 15  CRP__CRP
e 15 16  CRP__Leucocytes
e 16 17  Leucocytes__ReleaseB
e 17 18  ReleaseB__END


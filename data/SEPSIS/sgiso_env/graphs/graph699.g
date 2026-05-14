v 1 START
v 2 IVLiquid
v 3 ERRegistration
v 4 ERTriage
v 5 ERSepsisTriage
v 6 LacticAcid
v 7 Leucocytes
v 8 CRP
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 Leucocytes
v 12 CRP
v 13 LacticAcid
v 14 CRP
v 15 LacticAcid
v 16 Leucocytes
v 17 ReleaseB
v 18 END
e 3 4  ERRegistration__ERTriage
e 7 8  Leucocytes__CRP
e 11 12  Leucocytes__CRP
e 4 5  ERTriage__ERSepsisTriage
e 1 2  START__IVLiquid
e 2 3  IVLiquid__ERRegistration
e 5 6  ERSepsisTriage__LacticAcid
e 6 7  LacticAcid__Leucocytes
e 8 9  CRP__IVAntibiotics
e 10 11  AdmissionNC__Leucocytes
e 9 10  IVAntibiotics__AdmissionNC
e 12 13  CRP__LacticAcid
e 15 16  LacticAcid__Leucocytes
e 13 14  LacticAcid__CRP
e 14 15  CRP__LacticAcid
e 16 17  Leucocytes__ReleaseB
e 17 18  ReleaseB__END


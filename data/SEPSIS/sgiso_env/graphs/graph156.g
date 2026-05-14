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
v 11 Leucocytes
v 12 Leucocytes
v 13 CRP
v 14 Leucocytes
v 15 Leucocytes
v 16 CRP
v 17 ReleaseB
v 18 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 13 14  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__LacticAcid
e 6 7  LacticAcid__CRP
e 7 8  CRP__IVLiquid
e 10 11  AdmissionNC__Leucocytes
e 8 9  IVLiquid__IVAntibiotics
e 9 10  IVAntibiotics__AdmissionNC
e 11 12  Leucocytes__Leucocytes
e 12 13  Leucocytes__CRP
e 14 15  Leucocytes__Leucocytes
e 17 18  ReleaseB__END
e 15 16  Leucocytes__CRP
e 16 17  CRP__ReleaseB


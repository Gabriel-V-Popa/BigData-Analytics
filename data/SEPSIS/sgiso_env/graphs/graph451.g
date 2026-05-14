v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 CRP
v 5 Leucocytes
v 6 LacticAcid
v 7 ERSepsisTriage
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 Leucocytes
v 12 Leucocytes
v 13 Leucocytes
v 14 CRP
v 15 CRP
v 16 Leucocytes
v 17 Leucocytes
v 18 CRP
v 19 ReleaseB
v 20 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__CRP
e 4 5  CRP__Leucocytes
e 5 6  Leucocytes__LacticAcid
e 7 8  ERSepsisTriage__IVLiquid
e 6 7  LacticAcid__ERSepsisTriage
e 8 9  IVLiquid__IVAntibiotics
e 13 14  Leucocytes__CRP
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__Leucocytes
e 11 12  Leucocytes__Leucocytes
e 12 13  Leucocytes__Leucocytes
e 14 15  CRP__CRP
e 15 16  CRP__Leucocytes
e 16 17  Leucocytes__Leucocytes
e 19 20  ReleaseB__END
e 17 18  Leucocytes__CRP
e 18 19  CRP__ReleaseB


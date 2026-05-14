v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 IVAntibiotics
v 7 LacticAcid
v 8 Leucocytes
v 9 CRP
v 10 AdmissionNC
v 11 CRP
v 12 Leucocytes
v 13 Leucocytes
v 14 CRP
v 15 Leucocytes
v 16 ReleaseA
v 17 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 6 7  IVAntibiotics__LacticAcid
e 7 8  LacticAcid__Leucocytes
e 10 11  AdmissionNC__CRP
e 11 12  CRP__Leucocytes
e 14 15  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVLiquid
e 5 6  IVLiquid__IVAntibiotics
e 8 9  Leucocytes__CRP
e 9 10  CRP__AdmissionNC
e 12 13  Leucocytes__Leucocytes
e 13 14  Leucocytes__CRP
e 15 16  Leucocytes__ReleaseA
e 16 17  ReleaseA__END


v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 IVLiquid
v 6 IVAntibiotics
v 7 Leucocytes
v 8 LacticAcid
v 9 CRP
v 10 AdmissionNC
v 11 Leucocytes
v 12 CRP
v 13 Leucocytes
v 14 CRP
v 15 AdmissionNC
v 16 Leucocytes
v 17 CRP
v 18 Leucocytes
v 19 CRP
v 20 AdmissionNC
v 21 AdmissionNC
v 22 ReleaseA
v 23 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 11 12  Leucocytes__CRP
e 12 13  CRP__Leucocytes
e 13 14  Leucocytes__CRP
e 16 17  Leucocytes__CRP
e 17 18  CRP__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__IVLiquid
e 6 7  IVAntibiotics__Leucocytes
e 5 6  IVLiquid__IVAntibiotics
e 7 8  Leucocytes__LacticAcid
e 8 9  LacticAcid__CRP
e 9 10  CRP__AdmissionNC
e 10 11  AdmissionNC__Leucocytes
e 14 15  CRP__AdmissionNC
e 15 16  AdmissionNC__Leucocytes
e 18 19  Leucocytes__CRP
e 19 20  CRP__AdmissionNC
e 20 21  AdmissionNC__AdmissionNC
e 22 23  ReleaseA__END
e 21 22  AdmissionNC__ReleaseA


v 1 START
v 2 ERRegistration
v 3 IVLiquid
v 4 ERTriage
v 5 Leucocytes
v 6 CRP
v 7 LacticAcid
v 8 ERSepsisTriage
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 LacticAcid
v 12 Leucocytes
v 13 AdmissionNC
v 14 AdmissionNC
v 15 Leucocytes
v 16 CRP
v 17 CRP
v 18 Leucocytes
v 19 Leucocytes
v 20 CRP
v 21 Leucocytes
v 22 ReleaseA
v 23 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__IVLiquid
e 11 12  LacticAcid__Leucocytes
e 12 13  Leucocytes__AdmissionNC
e 20 21  CRP__Leucocytes
e 8 9  ERSepsisTriage__IVAntibiotics
e 3 4  IVLiquid__ERTriage
e 5 6  Leucocytes__CRP
e 4 5  ERTriage__Leucocytes
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__ERSepsisTriage
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__LacticAcid
e 13 14  AdmissionNC__AdmissionNC
e 15 16  Leucocytes__CRP
e 14 15  AdmissionNC__Leucocytes
e 16 17  CRP__CRP
e 17 18  CRP__Leucocytes
e 18 19  Leucocytes__Leucocytes
e 19 20  Leucocytes__CRP
e 21 22  Leucocytes__ReleaseA
e 22 23  ReleaseA__END


v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 CRP
v 7 LacticAcid
v 8 IVLiquid
v 9 IVAntibiotics
v 10 AdmissionNC
v 11 LacticAcid
v 12 AdmissionNC
v 13 AdmissionNC
v 14 AdmissionNC
v 15 CRP
v 16 Leucocytes
v 17 CRP
v 18 Leucocytes
v 19 CRP
v 20 Leucocytes
v 21 AdmissionNC
v 22 ReleaseA
v 23 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 15 16  CRP__Leucocytes
e 16 17  Leucocytes__CRP
e 17 18  CRP__Leucocytes
e 18 19  Leucocytes__CRP
e 19 20  CRP__Leucocytes
e 20 21  Leucocytes__AdmissionNC
e 3 4  ERTriage__ERSepsisTriage
e 11 12  LacticAcid__AdmissionNC
e 5 6  Leucocytes__CRP
e 8 9  IVLiquid__IVAntibiotics
e 6 7  CRP__LacticAcid
e 7 8  LacticAcid__IVLiquid
e 9 10  IVAntibiotics__AdmissionNC
e 10 11  AdmissionNC__LacticAcid
e 12 13  AdmissionNC__AdmissionNC
e 14 15  AdmissionNC__CRP
e 13 14  AdmissionNC__AdmissionNC
e 21 22  AdmissionNC__ReleaseA
e 22 23  ReleaseA__END


v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 CRP
v 6 Leucocytes
v 7 LacticAcid
v 8 IVAntibiotics
v 9 IVLiquid
v 10 AdmissionNC
v 11 LacticAcid
v 12 CRP
v 13 Leucocytes
v 14 AdmissionIC
v 15 Leucocytes
v 16 CRP
v 17 LacticAcid
v 18 AdmissionNC
v 19 CRP
v 20 Leucocytes
v 21 Leucocytes
v 22 CRP
v 23 Leucocytes
v 24 CRP
v 25 Leucocytes
v 26 CRP
v 27 Leucocytes
v 28 CRP
v 29 Leucocytes
v 30 CRP
v 31 Leucocytes
v 32 CRP
v 33 Leucocytes
v 34 CRP
v 35 Leucocytes
v 36 CRP
v 37 CRP
v 38 Leucocytes
v 39 Leucocytes
v 40 CRP
v 41 CRP
v 42 Leucocytes
v 43 Leucocytes
v 44 CRP
v 45 CRP
v 46 Leucocytes
v 47 CRP
v 48 Leucocytes
v 49 AdmissionNC
v 50 Leucocytes
v 51 CRP
v 52 ReleaseA
v 53 ReturnER
v 54 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__Leucocytes
e 14 15  AdmissionIC__Leucocytes
e 18 19  AdmissionNC__CRP
e 19 20  CRP__Leucocytes
e 22 23  CRP__Leucocytes
e 23 24  Leucocytes__CRP
e 24 25  CRP__Leucocytes
e 25 26  Leucocytes__CRP
e 26 27  CRP__Leucocytes
e 27 28  Leucocytes__CRP
e 28 29  CRP__Leucocytes
e 29 30  Leucocytes__CRP
e 30 31  CRP__Leucocytes
e 31 32  Leucocytes__CRP
e 32 33  CRP__Leucocytes
e 33 34  Leucocytes__CRP
e 34 35  CRP__Leucocytes
e 35 36  Leucocytes__CRP
e 46 47  Leucocytes__CRP
e 47 48  CRP__Leucocytes
e 48 49  Leucocytes__AdmissionNC
e 52 53  ReleaseA__ReturnER
e 53 54  ReturnER__END
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__CRP
e 6 7  Leucocytes__LacticAcid
e 7 8  LacticAcid__IVAntibiotics
e 8 9  IVAntibiotics__IVLiquid
e 10 11  AdmissionNC__LacticAcid
e 10 14  AdmissionNC__AdmissionIC
e 9 10  IVLiquid__AdmissionNC
e 13 15  Leucocytes__Leucocytes
e 11 12  LacticAcid__CRP
e 12 13  CRP__Leucocytes
e 15 16  Leucocytes__CRP
e 17 18  LacticAcid__AdmissionNC
e 16 17  CRP__LacticAcid
e 20 21  Leucocytes__Leucocytes
e 21 22  Leucocytes__CRP
e 36 37  CRP__CRP
e 37 38  CRP__Leucocytes
e 38 39  Leucocytes__Leucocytes
e 39 40  Leucocytes__CRP
e 40 41  CRP__CRP
e 41 42  CRP__Leucocytes
e 42 43  Leucocytes__Leucocytes
e 43 44  Leucocytes__CRP
e 44 45  CRP__CRP
e 45 46  CRP__Leucocytes
e 49 50  AdmissionNC__Leucocytes
e 51 52  CRP__ReleaseA
e 50 51  Leucocytes__CRP


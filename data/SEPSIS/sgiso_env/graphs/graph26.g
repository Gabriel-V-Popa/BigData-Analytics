v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 Leucocytes
v 6 LacticAcid
v 7 CRP
v 8 AdmissionIC
v 9 AdmissionNC
v 10 AdmissionNC
v 11 ReleaseA
v 12 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 4 5  ERSepsisTriage__Leucocytes
e 3 4  ERTriage__ERSepsisTriage
e 5 6  Leucocytes__LacticAcid
e 8 9  AdmissionIC__AdmissionNC
e 6 7  LacticAcid__CRP
e 7 8  CRP__AdmissionIC
e 9 10  AdmissionNC__AdmissionNC
e 11 12  ReleaseA__END
e 10 11  AdmissionNC__ReleaseA


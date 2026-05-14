v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 ERSepsisTriage
v 5 AdmissionNC
v 6 ReleaseA
v 7 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 3 4  ERTriage__ERSepsisTriage
e 4 5  ERSepsisTriage__AdmissionNC
e 5 6  AdmissionNC__ReleaseA
e 6 7  ReleaseA__END


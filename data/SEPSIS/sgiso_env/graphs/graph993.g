v 1 START
v 2 ERRegistration
v 3 ERTriage
v 4 Leucocytes
v 5 CRP
v 6 ERSepsisTriage
v 7 END
e 1 2  START__ERRegistration
e 2 3  ERRegistration__ERTriage
e 5 6  CRP__ERSepsisTriage
e 6 7  ERSepsisTriage__END
e 3 4  ERTriage__Leucocytes
e 4 5  Leucocytes__CRP


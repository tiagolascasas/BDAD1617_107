pragma foreign_keys = on;

insert into ClientEntretainment (idPerson, idService) values (17, 8); --17 is a child (toddler), 8 is a show for children (kids).
                                                                      --Should fail because toddler != kid

insert into ClientEntretainment (idPerson, idService) values (10, 9); --10 is an adult, 9 is a show for all kids
                                                                      --Should fail because adult != child

insert into ClientEntretainment (idPerson, idService) values (17, 6); --17 is a child, 6 is a show for adults
                                                                      --Should fail because child != adult

insert into ClientEntretainment (idPerson, idService) values (17, 11); --17 is a child, 11 is a show for all people
                                                                       --Should NOT fail

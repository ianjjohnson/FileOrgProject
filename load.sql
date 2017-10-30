use project;

insert into Product(product_id, name, version, status) values
(1, "Excel", "2010", "not-ready"),
(2, "Excel", "2015", "not-ready"),
(3, "Excel", "2018beta", "not-ready"),
(4, "Excel", "secret", "not-ready");

insert into Person(person_id, name, start_date, manager_id) values
(10100, "Employee-1", "1984/11/08", null),
(10200, "Employee-2", "1984/11/08", 10100),
(10300, "Employee-3", "2004/11/08", 10200),
(10400, "Employee-4", "2008/11/01", 10200),
(10500, "Employee-5", "2015/11/01", 10400),
(10600, "Employee-6", "2015/11/01", 10400),
(10700, "Employee-7", "2016/11/01", 10400),
(10800, "Employee-8", "2017/11/01", 10200);

insert into Component(component_id, name, version, size, language, owner_id) values
(1, "Keyboard Driver", "K11", 1200, "C", 10100),
(2, "Touch Screen Drive", "T00", 4000, "C++", 10100),
(3, "Dbase Interface", "D00", 2500, "C++", 10200),
(4, "Dbase Interface", "D01", 2500, "C++", 10300),
(5, "Chart Generator", "C11", 6500, "Java", 10200),
(6, "Pen Driver", "P01", 3575, "C", 10700),
(7, "Math Unit", "A01", 5000, "C", 10200),
(8, "Math Unit", "A02", 3500, "Java", 10200);

insert into Dependency(product_id, component_id) values
(1, 1), (1, 3),
(2, 1), (2, 4), (2, 6),
(3, 1), (3, 2), (3, 5),
(4, 1), (4, 2), (4, 5), (4, 8);

insert into Inspection(component_id, inspection_date, performer_id, score, description) values
(1, "2010/02/14", 10100, 100, "legacy code which is already approved"),
(2, "2017/06/01", 10200, 95, "initial release ready for usage"),
(3, "2010/02/22", 10100, 55, "too many hard coded parameters, the software must be more maintainable and configurable because we want to use it in other products"),
(3, "2010/02/24", 10100, 78, "improved, but only handles DB2 format"),
(3, "2010/02/26", 10100, 95, "Okay, handles DB3 format"),
(3, "2010/02/28", 10100, 100, "satisfied"),
(4, "2011/05/01", 10200, 100, "Okay ready for use"),
(6, "2017/07/15", 10300, 80, "Okay ready for beta testing"),
(7, "2014/06/10", 10100, 90, "almost ready"),
(8, "2014/06/15", 10100, 70, "Accuracy problems!"),
(8, "2014/06/30", 10100, 100, "Okay problems fixed"),
(8, "2016/11/02", 10700, 100, "re-review for new employee to gain experience in the process.");

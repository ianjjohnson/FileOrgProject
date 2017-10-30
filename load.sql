use project;

insert into Product(product_id, name, version, status) values
(1, "Excel", "2010", "not-ready"),
(2, "Excel", "2015", "not-ready"),
(3, "Excel", "2018beta", "not-ready"),
(4, "Excel", "secret", "not-ready");

insert into Person(person_id, name, start_date, manager_id) values
(10100, "Employee-1", "11/8/1984", null),
(10200, "Employee-2", "11/8/1984", 10100),
(10300, "Employee-3", "11/8/2004", 10200),
(10400, "Employee-4", "11/1/2008", 10200),
(10500, "Employee-5", "11/1/2015", 10400),
(10600, "Employee-6", "11/1/2015", 10400),
(10700, "Employee-7", "11/1/2016", 10400),
(10800, "Employee-8", "11/1/2017", 10200);

--
-- Table structure for table "departments"
--

DROP TABLE IF EXISTS "departments";
CREATE TABLE "departments" (
  "dept_no" char(4) NOT NULL,
  "dept_name" varchar(40) NOT NULL,
  PRIMARY KEY ("dept_no"),
  UNIQUE KEY "dept_name" ("dept_name")
);

--
-- Table structure for table "dept_emp"
--

DROP TABLE IF EXISTS "dept_emp";
CREATE TABLE "dept_emp" (
  "emp_no" int(11) NOT NULL,
  "dept_no" char(4) NOT NULL,
  "from_date" date NOT NULL,
  "to_date" date NOT NULL,
  PRIMARY KEY ("emp_no","dept_no")
);

--
-- Table structure for table "dept_manager"
--

DROP TABLE IF EXISTS "dept_manager";
CREATE TABLE "dept_manager" (
  "dept_no" char(4) NOT NULL,
  "emp_no" int(11) NOT NULL,
  "from_date" date NOT NULL,
  "to_date" date NOT NULL,
  PRIMARY KEY ("emp_no","dept_no")
);

--
-- Table structure for table "employees"
--

DROP TABLE IF EXISTS "employees";
CREATE TABLE "employees" (
  "emp_no" int(11) NOT NULL,
  "birth_date" date NOT NULL,
  "first_name" varchar(14) NOT NULL,
  "last_name" varchar(16) NOT NULL,
  "gender" varchar(1) NOT NULL,
  "hire_date" date NOT NULL,
  PRIMARY KEY ("emp_no")
);

--
-- Table structure for table "salaries"
--

DROP TABLE IF EXISTS "salaries";
CREATE TABLE "salaries" (
  "emp_no" int(11) NOT NULL,
  "salary" int(11) NOT NULL,
  "from_date" date NOT NULL,
  "to_date" date NOT NULL,
  PRIMARY KEY ("emp_no","from_date")
);

--
-- Table structure for table "titles"
--

DROP TABLE IF EXISTS "titles";
CREATE TABLE "titles" (
  "emp_no" int(11) NOT NULL,
  "title" varchar(50) NOT NULL,
  "from_date" date NOT NULL,
  "to_date" date DEFAULT NULL,
  PRIMARY KEY ("emp_no","title","from_date")
);
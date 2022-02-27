-- SQL creating tables for each CSV

CREATE TABLE "departments" (
    "dept_no" varchar   NOT NULL,
    "dept_name" varchar   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "department_employees" (
    "emp_no" varchar   NOT NULL,
    "dept_no" varchar   NOT NULL
);

CREATE TABLE "department_manager" (
    "dept_no" varchar   NOT NULL,
    "emp_no" varchar   NOT NULL,
	CONSTRAINT "pk_department_manager" PRIMARY KEY (
        "dept_no", "emp_no")
);

DROP TABLE IF EXISTS "employees";

CREATE TABLE "employees" (
    "emp_n" varchar   NOT NULL,
    "emp_title" varchar   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
	"sex" varchar NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_n"
     )
);

CREATE TABLE "Salaries" (
    "emp_no" varchar   NOT NULL,
    "salary" int   NOT NULL
);

CREATE TABLE "Titles" (
    "title_id" varchar   NOT NULL,
    "title" varchar   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "title_id"
     )
);

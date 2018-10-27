-- creating db: fii_mater_db
DROP DATABASE IF EXISTS fii_master_db;
CREATE DATABASE fii_master_db WITH OWNER = postgres;

-- creating tables:

-- Table: public."Courses" 
DROP TABLE IF EXISTS public."Courses";

CREATE TABLE public."Courses"
(
    id integer NOT NULL,
    name character varying(32) COLLATE pg_catalog."default" NOT NULL,
    package_id integer NOT NULL,
    CONSTRAINT courses_pkey PRIMARY KEY (id),
    CONSTRAINT "Courses_package_id_fkey" FOREIGN KEY (package_id)
        REFERENCES public."Packages" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Courses"
    OWNER to postgres;

-- Table: public."Lecturer"
DROP TABLE IF EXISTS public."Lecturer";

CREATE TABLE public."Lecturer"
(
    id integer NOT NULL,
    name character varying COLLATE pg_catalog."default" NOT NULL,
    course_id integer,
    CONSTRAINT lecturer_pkey PRIMARY KEY (id),
    CONSTRAINT "Lecturer_course_id_fkey" FOREIGN KEY (course_id)
        REFERENCES public."Courses" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Lecturer"
    OWNER to postgres;

-- Table: public."Packages"
DROP TABLE IF EXISTS public."Packages";

CREATE TABLE public."Packages"
(
    id integer NOT NULL,
    name character varying(32) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT packages_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Packages"
    OWNER to postgres;

-- Table: public."Students"
DROP TABLE IF EXISTS public."Students";

CREATE TABLE public."Students"
(
    id integer NOT NULL,
    name character varying(128) COLLATE pg_catalog."default",
    mail character varying(128) COLLATE pg_catalog."default",
    CONSTRAINT students_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Students"
    OWNER to postgres;

-- Table: public."StudentsCourses"
DROP TABLE IF EXISTS public."StudentsCourses";

CREATE TABLE public."StudentsCourses"
(
    course_id integer NOT NULL,
    student_id integer NOT NULL,
    CONSTRAINT "StudentsCourses_pkey" PRIMARY KEY (course_id, student_id),
    CONSTRAINT "StudentsCourses_course_id_fkey" FOREIGN KEY (course_id)
        REFERENCES public."Courses" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "StudentsCourses_student_id_fkey" FOREIGN KEY (student_id)
        REFERENCES public."Students" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."StudentsCourses"
    OWNER to postgres;

-- Table: public."StudentsPreferences"
DROP TABLE IF EXISTS public."StudentsPreferences";

CREATE TABLE public."StudentsPreferences"
(
    student_id integer,
    course_id integer,
    CONSTRAINT "StudentsPreferences_course_id_fkey" FOREIGN KEY (course_id)
        REFERENCES public."Courses" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "StudentsPreferences_student_id_fkey" FOREIGN KEY (student_id)
        REFERENCES public."Students" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."StudentsPreferences"
    OWNER to postgres;

-- sequences
CREATE SEQUENCE "CoursesSeq";
ALTER TABLE "Courses" ALTER COLUMN "id" SET DEFAULT nextval('"CoursesSeq"');
ALTER TABLE "Courses" ALTER COLUMN "id" SET NOT NULL;
ALTER SEQUENCE "CoursesSeq" OWNED BY "Courses".id;

CREATE SEQUENCE "LecturerSeq";
ALTER TABLE "Lecturer" ALTER COLUMN "id" SET DEFAULT nextval('"LecturerSeq"');
ALTER TABLE "Lecturer" ALTER COLUMN "id" SET NOT NULL;
ALTER SEQUENCE "LecturerSeq" OWNED BY "Lecturer".id;

CREATE SEQUENCE "PackagesSeq";
ALTER TABLE "Packages" ALTER COLUMN "id" SET DEFAULT nextval('"PackagesSeq"');
ALTER TABLE "Packages" ALTER COLUMN "id" SET NOT NULL;
ALTER SEQUENCE "PackagesSeq" OWNED BY "Packages".id;

CREATE SEQUENCE "StudentsSeq";
ALTER TABLE "Students" ALTER COLUMN "id" SET DEFAULT nextval('"StudentsSeq"');
ALTER TABLE "Students" ALTER COLUMN "id" SET NOT NULL;
ALTER SEQUENCE "StudentsSeq" OWNED BY "Students".id;

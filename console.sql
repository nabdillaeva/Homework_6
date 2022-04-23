alter table person
    alter column id set default nextval('passport_id_seq'::regclass);

alter table person
    add full_name varchar not null;

alter table person
    drop column name;

alter table person
    drop column age;

alter table person
    add inn bigint not null;

alter table person
    add date_of_expire date not null;

alter table person
    drop constraint person_person_id_fkey;

alter table person
    drop column person_id;

alter table person
    drop constraint person_email_check;

alter table person
    drop column email;


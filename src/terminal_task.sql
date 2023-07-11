Server [localhost]:
Database [postgres]:
Port [5432]:
Username [postgres]: postgres
Пароль пользователя postgres:
psql (15.3)
ПРЕДУПРЕЖДЕНИЕ: Кодовая страница консоли (866) отличается от основной
                страницы Windows (1251).
                8-битовые (русские) символы могут отображаться некорректно.
                Подробнее об этом смотрите документацию psql, раздел
                "Notes for Windows users".
Введите "help", чтобы получить справку.

postgres=# \c
Вы подключены к базе данных "postgres" как пользователь "postgres".
postgres=# \c postgres3
Вы подключены к базе данных "postgres3" как пользователь "postgres".
postgres3=# create table people(person_id serial primary key, first_name varchar (50) not null,last_name varchar(50) not null,age int , gender char , address varchar (50) not null, phone_number varchar (80) not null, email varchar unique, occupation varchar , nationality varchar, education varchar, language varchar, is_Married boolean, has_children boolean, height double, weight double);
ОШИБКА:  тип "double" не существует
СТРОКА 1: ... is_Married boolean, has_children boolean, height double, we...
                                                               ^
postgres3=# create table people(person_id serial primary key, first_name varchar (50) not null,last_name varchar(50) not null,age int , gender char , address varchar (50) not null, phone_number varchar (80) not null, email varchar unique, occupation varchar , nationality varchar, education varchar, language varchar, is_Married boolean, has_children boolean, height float, weight float);
CREATE TABLE
    postgres3=# insert into people(first_name,last_name,age,gender,address,phone_number,email,occupation,nationality,education,language,is_Married,has_children,height,weight)values('Sam','Anders',34,'M','jibek-jolu str 34','+996700565678','sam@gmail.com','bartender','kyrgyz','master dergree','kyrgyz',true,true,1.79,78.6);
INSERT 0 1
postgres3=# select * from people;
person_id | first_name | last_name | age | gender |      address      | phone_number  |     email     | occupation | nationality |   education    | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+-------------------+---------------+---------------+------------+-------------+----------------+----------+------------+--------------+--------+--------
         1 | Sam        | Anders    |  34 | M      | jibek-jolu str 34 | +996700565678 | sam@gmail.com | bartender  | kyrgyz      | master dergree | kyrgyz   | t          | t            |   1.79 |   78.6
(1 ёЄЁюър)


postgres3=# insert into people(first_name,last_name,age,gender,address,phone_number,email,occupation,nationality,education,language,is_Married,has_children,height,weight)values('Leo','Messi',35,'M','aitmatova str 57','+996708456378','leo@gmail.com','footballer','argentinian','master degree','spanish',true,true,1.69,72),('Mike','Meyers',27,'M','baitik-baatyr str 48','+996700285696','mike@gmail.com','ceo of company','english','master degree','english',false,false,1.80.81.2);
ОШИБКА:  ошибка синтаксиса (примерное положение: ".81")
СТРОКА 1: ...,'english','master degree','english',false,false,1.80.81.2);
^
postgres3=#  insert into people(first_name,last_name,age,gender,address,phone_number,email,occupation,nationality,education,language,is_Married,has_children,height,weight)values('Leo','Messi',35,'M','aitmatova str 57','+996708456378','leo@gmail.com','footballer','argentinian','master degree','spanish',true,true,1.69,72),('Mike','Meyers',27,'M','baitik-baatyr str 48','+996700285696','mike@gmail.com','ceo of company','english','master degree','english',false,false,1.80,80.2);
INSERT 0 2
postgres3=# select * from people;
person_id | first_name | last_name | age | gender |       address        | phone_number  |     email      |   occupation   | nationality |   education    | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+----------------------+---------------+----------------+----------------+-------------+----------------+----------+------------+--------------+--------+--------
         1 | Sam        | Anders    |  34 | M      | jibek-jolu str 34    | +996700565678 | sam@gmail.com  | bartender      | kyrgyz      | master dergree | kyrgyz   | t          | t            |   1.79 |   78.6
         2 | Leo        | Messi     |  35 | M      | aitmatova str 57     | +996708456378 | leo@gmail.com  | footballer     | argentinian | master degree  | spanish  | t          | t            |   1.69 |     72
         3 | Mike       | Meyers    |  27 | M      | baitik-baatyr str 48 | +996700285696 | mike@gmail.com | ceo of company | english     | master degree  | english  | f          | f            |    1.8 |   80.2
(3 ёЄЁюъш)


postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (1, 'Roley', 'Kulis', 17, 'Agender', '962 Bartillon Point', '(670) 4685961', 'rkulis0@netlog.com', 'Geological Engineer', 'France', 'Université de Toulouse', 'Amharic', false, true, 106, 102);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (2, 'Guy', 'Matous', 35, 'Male', '1 Parkside Street', '(729) 9024030', 'gmatous1@cpanel.net', 'Structural Engineer', 'Colombia', 'Universidad del Quindío', 'Azeri', false, false, 192, 115);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (3, 'Sonnie', 'Seary', 43, 'Male', '2 Golden Leaf Plaza', '(975) 3979283', 'sseary2@w3.org', 'VP Product Management', 'Latvia', 'Riga Aviation University', 'Kazakh', false, false, 163, 64);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (4, 'Eugine', 'Clews', 19, 'Female', '2321 Starling Court', '(333) 8409934', 'eclews3@go.com', 'Actuary', 'Mongolia', 'Health sciences University of Mongolia', 'Armenian', false, false, 156, 83);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (5, 'Putnam', 'Davidi', 77, 'Bigender', '442 Luster Lane', '(599) 5005809', 'pdavidi4@simplemachines.org', 'Tax Accountant', 'China', 'Ningxia Medical College', 'Portuguese', false, true, 181, 84);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (6, 'Cherey', 'Jozwicki', 64, 'Female', '3700 Loeprich Plaza', '(950) 2225104', 'cjozwicki5@craigslist.org', 'Desktop Support Technician', 'Indonesia', 'Universitas Darma Persada', 'Marathi', false, false, 103, 105);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (7, 'Claudine', 'Hasling', 54, 'Female', '180 Chinook Terrace', '(695) 5616943', 'chasling6@berkeley.edu', 'Senior Financial Analyst', 'China', 'Tianjin Open University', 'Thai', false, true, 143, 96);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (8, 'Pegeen', 'Darling', 74, 'Female', '2567 Veith Trail', '(785) 9385394', 'pdarling7@cdbaby.com', 'Assistant Manager', 'Russia', 'Moscow External University of the Humanities', 'Chinese', true, false, 144, 99);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (9, 'Ade', 'Bresnahan', 24, 'Male', '5820 Schiller Plaza', '(172) 2644767', 'abresnahan8@feedburner.com', 'Help Desk Operator', 'Ukraine', 'National Technical University (Kiev Politechnical Institute)', 'Amharic', true, true, 178, 71);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (10, 'Edvard', 'Clelle', 17, 'Male', '9588 Monument Road', '(303) 1303964', 'eclelle9@google.cn', 'Automation Specialist II', 'United States', 'Trinity College of Florida', 'Burmese', true, true, 120, 107);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (11, 'Kirby', 'Hens', 17, 'Male', '1786 Sachtjen Junction', '(661) 2009513', 'khensa@google.com.au', 'Web Designer II', 'China', 'Beijing Union University', 'Arabic', false, false, 143, 60);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (12, 'Alysa', 'Ramage', 60, 'Female', '021 Lerdahl Center', '(994) 3083770', 'aramageb@google.ru', 'Senior Sales Associate', 'Poland', 'Higher School o Business/National Louis University(WSB/NLU) in Nowy Sacz', 'Yiddish', true, true, 204, 102);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (13, 'Gillian', 'Sicily', 21, 'Polygender', '78588 Moose Hill', '(804) 7753271', 'gsicilyc@mozilla.org', 'Design Engineer', 'Greece', 'Institute of Management & Enteurpreneurship of South East Europe', 'Indonesian', false, true, 125, 55);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (14, 'Eddy', 'Trill', 29, 'Female', '52 Northfield Court', '(393) 5612122', 'etrilld@google.pl', 'Administrative Officer', 'Russia', 'Mendeleev Russian University of Chemical Technology', 'Bosnian', true, false, 142, 95);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (15, 'Ario', 'Jakaway', 77, 'Male', '216 Welch Street', '(486) 8497174', 'ajakawaye@spiegel.de', 'Budget/Accounting Analyst III', 'Russia', 'Ulyanovsk State Pedagogical University', 'Haitian Creole', false, true, 169, 48);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (16, 'Allyson', 'Annable', 76, 'Female', '904 Spenser Street', '(741) 8038048', 'aannablef@mashable.com', 'Research Assistant III', 'Canada', 'Lansbridge University', 'Swahili', false, true, 208, 111);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (17, 'Blakeley', 'Heeran', 26, 'Female', '2365 Farmco Street', '(299) 8767492', 'bheerang@histats.com', 'Accounting Assistant II', 'Venezuela', 'Universidad del Zulia', 'Amharic', false, true, 148, 67);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (18, 'Dennis', 'Schreurs', 19, 'Male', '7872 Marcy Terrace', '(645) 4498325', 'dschreursh@ucla.edu', 'Analog Circuit Design manager', 'Indonesia', 'Politeknik Negeri Semarang', 'Pashto', false, true, 174, 74);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (19, 'Francklyn', 'Blunt', 43, 'Male', '7427 Northview Parkway', '(182) 4992909', 'fblunti@dyndns.org', 'Actuary', 'Syria', 'Syrian Virtual University', 'Kannada', true, true, 210, 119);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (20, 'Leif', 'Groucutt', 27, 'Male', '430 Mesta Place', '(177) 4880365', 'lgroucuttj@usnews.com', 'Senior Editor', 'Serbia', 'Megatrend University of Applied Sciences', 'Kurdish', false, true, 202, 57);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (21, 'Irina', 'Endricci', 25, 'Bigender', '093 Maryland Point', '(974) 5249483', 'iendriccik@xing.com', 'Marketing Assistant', 'China', 'Hebei United University', 'Estonian', true, true, 153, 71);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (22, 'Shem', 'Merrisson', 45, 'Male', '66577 Debs Lane', '(350) 8338402', 'smerrissonl@seattletimes.com', 'Biostatistician IV', 'Slovenia', 'University of Primorska', 'Swahili', false, false, 127, 68);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (23, 'Isadora', 'Cleeve', 70, 'Genderqueer', '4412 Upham Point', '(565) 1458839', 'icleevem@newsvine.com', 'Community Outreach Specialist', 'Tanzania', 'Tumaini University - Iringa University College', 'Albanian', false, false, 143, 43);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (24, 'Willi', 'McCullock', 42, 'Female', '93 Kropf Terrace', '(703) 6569842', 'wmccullockn@house.gov', 'Information Systems Manager', 'Indonesia', 'Universitas Pekalongan', 'Guaraní', false, false, 117, 119);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (25, 'Rhea', 'Dennes', 57, 'Female', '991 Katie Parkway', '(183) 6187227', 'rdenneso@engadget.com', 'Social Worker', 'Kosovo', 'Vardhaman Mahaveer Open University', 'Chinese', true, false, 215, 41);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (26, 'Terrence', 'Crang', 21, 'Male', '3 Manitowish Street', '(892) 9363566', 'tcrangp@usda.gov', 'Accounting Assistant III', 'China', '3rd Military Medical University', 'Guaraní', false, false, 157, 105);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (27, 'Giuseppe', 'Snalom', 77, 'Male', '47047 Mesta Court', '(987) 6307065', 'gsnalomq@360.cn', 'Environmental Tech', 'China', 'Nanjing University of Chemical Technology', 'Zulu', false, false, 128, 109);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (28, 'Iolande', 'Elliss', 54, 'Female', '827 Monica Parkway', '(236) 9549296', 'iellissr@msu.edu', 'Budget/Accounting Analyst I', 'Nigeria', 'Igbinedion University', 'Persian', false, false, 213, 95);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (29, 'Silvano', 'O'' Connell', 19, 'Male', '4168 Algoma Plaza', '(592) 6182596', 'soconnells@angelfire.com', 'Design Engineer', 'Poland', 'University of Finance and Management in Bialystok', 'Bengali', false, true, 101, 73);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (30, 'Job', 'Worham', 27, 'Male', '25432 Darwin Point', '(705) 9079304', 'jworhamt@eventbrite.com', 'Financial Advisor', 'Russia', 'Dubna International University for Nature, Society and Man', 'Tajik', true, false, 225, 92);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (31, 'Annie', 'Mounce', 31, 'Female', '986 Ridge Oak Road', '(553) 1116347', 'amounceu@t-online.de', 'Administrative Officer', 'Philippines', 'University of Saint La Salle', 'Tswana', false, false, 103, 86);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (32, 'Kath', 'Matthias', 66, 'Female', '4419 Twin Pines Alley', '(621) 2084023', 'kmatthiasv@nsw.gov.au', 'Research Nurse', 'China', 'Hohai University Changzhou', 'Indonesian', true, true, 188, 85);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (33, 'Jacynth', 'Scallon', 21, 'Female', '09384 Briar Crest Way', '(161) 3155058', 'jscallonw@icq.com', 'Senior Sales Associate', 'Russia', 'Adygeja State University', 'Tetum', false, false, 229, 61);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (34, 'Oran', 'McCathay', 15, 'Male', '3406 Birchwood Circle', '(954) 9183141', 'omccathayx@fema.gov', 'Payment Adjustment Coordinator', 'China', 'Taiyuan University of Technology', 'Italian', false, true, 109, 102);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (35, 'Vonni', 'McGarrahan', 75, 'Female', '958 Menomonie Drive', '(477) 1871902', 'vmcgarrahany@vistaprint.com', 'Software Consultant', 'Philippines', 'Technological University of the Philippines', 'Georgian', false, true, 103, 83);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (36, 'Allegra', 'Deniskevich', 29, 'Female', '9 Main Road', '(149) 1937952', 'adeniskevichz@yale.edu', 'Structural Analysis Engineer', 'Mexico', 'Universidad Autónoma del Estado de México', 'Dhivehi', false, true, 108, 68);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (37, 'Farris', 'Matlock', 66, 'Male', '54 Waubesa Way', '(572) 7997705', 'fmatlock10@amazon.com', 'Financial Advisor', 'Guatemala', 'Universidad Rural de Guatemala', 'Japanese', false, false, 127, 75);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (38, 'Normand', 'Corse', 46, 'Male', '1925 Dwight Pass', '(754) 2869058', 'ncorse11@webnode.com', 'Design Engineer', 'Vietnam', 'Ho Chi Minh City University of Agriculture and Forestry', 'Burmese', true, false, 200, 108);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (39, 'Gus', 'Gowlett', 27, 'Male', '33 Kenwood Road', '(364) 3536965', 'ggowlett12@jugem.jp', 'Social Worker', 'China', 'Huaihai Institute of Technology', 'German', false, true, 104, 63);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=# insert into people (id, first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values (40, 'Hagan', 'Cymper', 31, 'Male', '87 Sutherland Terrace', '(193) 6687316', 'hcymper13@zimbio.com', 'Accountant III', 'Belize', 'Central America Health Sciences University (Belize Medical College)', 'Somali', false, true, 178, 52);
ОШИБКА:  столбец "id" в таблице "people" не существует
СТРОКА 1: insert into people (id, first_name, last_name, age, gender, ...
                              ^
postgres3=#
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Pren', 'Nutman', 22, 'Male', '43773 Knutson Parkway', '(811) 3197324', 'pnutman0@google.ru', 'Computer Systems Analyst I', 'Kazakhstan', 'Kazakh British Technical University', 'Bislama', true, false, 132, 92);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Glyn', 'Jollye', 74, 'Male', '9900 Roth Street', '(213) 2236289', 'gjollye1@github.com', 'Senior Cost Accountant', 'Brazil', 'Universidade Federal do Maranhão', 'Indonesian', false, false, 195, 77);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Morton', 'Horsfield', 31, 'Genderqueer', '2469 Onsgard Court', '(134) 6315788', 'mhorsfield2@google.de', 'VP Accounting', 'Venezuela', 'Universidad Dr. Rafael Belloso Chacín', 'Mongolian', false, true, 144, 52);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Imelda', 'Beauchop', 54, 'Female', '119 Hansons Junction', '(217) 7230574', 'ibeauchop3@msu.edu', 'Registered Nurse', 'Indonesia', 'Universitas Indonesia', 'Japanese', true, true, 225, 105);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Meghann', 'Leadbetter', 55, 'Non-binary', '6774 West Parkway', '(391) 4460195', 'mleadbetter4@tumblr.com', 'Software Test Engineer I', 'Chile', 'Escuela de Arquitectura y Diseño', 'Italian', false, false, 135, 74);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Daniel', 'Bertin', 56, 'Male', '37400 Union Plaza', '(288) 1895656', 'dbertin5@elpais.com', 'Food Chemist', 'Venezuela', 'Universidad Centro Occidental Lisandro Alvarado', 'Greek', false, false, 168, 118);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Benedicto', 'Grumbridge', 62, 'Male', '15019 Buhler Park', '(853) 3937530', 'bgrumbridge6@domainmarket.com', 'Senior Cost Accountant', 'Nigeria', 'University of Jos', 'Tamil', false, false, 180, 43);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Frederick', 'Huett', 52, 'Male', '372 Elka Circle', '(375) 1907352', 'fhuett7@cbc.ca', 'Tax Accountant', 'Peru', 'Universidad Peruana de Ciencias Aplicadas', 'Sotho', true, true, 197, 105);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Kippar', 'Yellop', 68, 'Male', '22 Larry Junction', '(647) 8278770', 'kyellop8@scientificamerican.com', 'VP Marketing', 'Portugal', 'Universidade Catolica Portuguesa', 'Romanian', true, false, 136, 120);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Sula', 'Huett', 20, 'Female', '195 Arrowood Park', '(125) 7558560', 'shuett9@freewebs.com', 'Health Coach II', 'Russia', 'Saratov State Socio-Economic University', 'Spanish', true, true, 228, 91);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Hy', 'Kubicek', 53, 'Male', '67 Almo Place', '(703) 5559649', 'hkubiceka@fotki.com', 'Health Coach IV', 'China', 'Wenzhou University', 'Dhivehi', false, true, 145, 118);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Ruthann', 'Sinnie', 67, 'Female', '7 Sullivan Pass', '(323) 8589556', 'rsinnieb@google.nl', 'Desktop Support Technician', 'Japan', 'Niigata College of Pharmacy', 'Afrikaans', false, true, 109, 106);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Maggy', 'Cristofanini', 24, 'Female', '68708 Anniversary Hill', '(326) 7551068', 'mcristofaninic@blogspot.com', 'Operator', 'Russia', 'Perm State University', 'Quechua', true, false, 182, 107);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Gusella', 'Cashmore', 44, 'Female', '283 Scofield Plaza', '(661) 9306576', 'gcashmored@amazon.com', 'Human Resources Manager', 'Portugal', 'Universidade Autónoma de Lisboa Luís de Camoes', 'Luxembourgish', true, false, 229, 59);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Fabien', 'Serchwell', 29, 'Male', '37 Heffernan Road', '(600) 1447745', 'fserchwelle@themeforest.net', 'Mechanical Systems Engineer', 'Vietnam', 'Ho Chi Minh City University of Economics', 'Icelandic', true, true, 224, 57);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Demetris', 'Lambertz', 75, 'Female', '6 Bayside Hill', '(213) 8417037', 'dlambertzf@admin.ch', 'Senior Financial Analyst', 'United States', 'Centre College', 'Azeri', false, true, 200, 65);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Gavin', 'Rawle', 71, 'Male', '31 Kipling Point', '(194) 5420327', 'grawleg@github.io', 'Statistician IV', 'Greece', 'University of Patras', 'Bengali', false, false, 107, 52);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Laurence', 'Mabbitt', 22, 'Male', '5111 Northland Road', '(387) 5809046', 'lmabbitth@istockphoto.com', 'Mechanical Systems Engineer', 'Croatia', 'Zagreb School of Economics and Management', 'Macedonian', false, false, 118, 82);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Chilton', 'Rubanenko', 66, 'Male', '72 Mifflin Avenue', '(891) 5167621', 'crubanenkoi@weebly.com', 'VP Product Management', 'China', ' Huaihua University', 'Norwegian', false, false, 114, 81);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Rosalind', 'Wiszniewski', 31, 'Female', '944 Hayes Avenue', '(267) 2330752', 'rwiszniewskij@zimbio.com', 'Geologist III', 'Indonesia', 'Universitas Jambi', 'Macedonian', true, false, 108, 72);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Shepherd', 'Silvers', 79, 'Male', '5 Corben Circle', '(637) 8977157', 'ssilversk@admin.ch', 'Account Executive', 'Portugal', 'Instituto Superior de Psicologia Aplicada', 'Mongolian', false, false, 163, 42);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Florri', 'Abramovici', 16, 'Female', '6 Starling Parkway', '(785) 9387590', 'fabramovicil@stumbleupon.com', 'Assistant Media Planner', 'Peru', 'Universidad Alas Peruanas', 'Japanese', true, false, 141, 98);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Mead', 'Flintoff', 75, 'Male', '4387 Summerview Center', '(634) 6649506', 'mflintoffm@liveinternet.ru', 'Account Executive', 'Philippines', 'Saint Louis College', 'Macedonian', true, true, 115, 120);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Bruno', 'Harmeston', 73, 'Male', '39 Orin Road', '(863) 1568707', 'bharmestonn@google.pl', 'Project Manager', 'Ukraine', 'Kharkiv National University of Radio Electronics', 'Indonesian', false, true, 175, 50);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Mufinella', 'Astling', 22, 'Female', '54 Ridge Oak Way', '(781) 3636584', 'mastlingo@businesswire.com', 'Accountant IV', 'South Africa', 'University of North West', 'West Frisian', true, false, 110, 87);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Lynn', 'Gate', 28, 'Male', '222 Melby Pass', '(406) 5310944', 'lgatep@friendfeed.com', 'Junior Executive', 'Indonesia', 'Universitas Nasional Jakarta', 'Nepali', true, true, 196, 63);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Aldon', 'Atthowe', 22, 'Male', '6 Almo Trail', '(340) 8444140', 'aatthoweq@oakley.com', 'Structural Analysis Engineer', 'Thailand', 'King Mongkut''s University of Technology Thonburi', 'Georgian', true, true, 132, 77);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Osborn', 'Duce', 36, 'Male', '98 Grim Court', '(286) 2782863', 'oducer@drupal.org', 'Business Systems Development Analyst', 'Kyrgyzstan', 'Jalalabad State University Kyrgyzstan', 'Hindi', false, true, 191, 67);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Lorine', 'Kalisz', 79, 'Female', '52087 Havey Way', '(888) 8976790', 'lkaliszs@whitehouse.gov', 'Help Desk Operator', 'Indonesia', 'Universitas Muria Kudus', 'Māori', true, true, 131, 72);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Kendal', 'Laurisch', 59, 'Male', '2874 Becker Lane', '(958) 7246074', 'klaurischt@godaddy.com', 'Project Manager', 'Indonesia', 'Universitas 17 Agustus 1945 Jakarta', 'Dhivehi', true, true, 158, 81);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Bliss', 'Macari', 27, 'Female', '72418 Loeprich Circle', '(738) 1431456', 'bmacariu@epa.gov', 'Quality Control Specialist', 'Philippines', 'Xavier University', 'Moldovan', false, true, 218, 101);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Lucina', 'Napton', 23, 'Female', '0 Muir Point', '(740) 5498209', 'lnaptonv@ezinearticles.com', 'Product Engineer', 'Colombia', 'Universidad de Los Andes', 'Guaraní', true, true, 150, 70);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Annecorinne', 'Boyat', 50, 'Female', '3988 Loftsgordon Court', '(736) 5768410', 'aboyatw@arstechnica.com', 'Physical Therapy Assistant', 'Yemen', 'Al-Eman University', 'Polish', false, true, 149, 78);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Lindsey', 'Rodgerson', 79, 'Genderqueer', '98 Old Shore Terrace', '(894) 7494382', 'lrodgersonx@ihg.com', 'Community Outreach Specialist', 'China', 'Zhongnan University of Technology', 'Moldovan', false, false, 124, 95);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Fairlie', 'Linkleter', 15, 'Male', '3 Burning Wood Junction', '(509) 2209214', 'flinkletery@blinklist.com', 'Social Worker', 'China', 'East China Jiao Tong University', 'Japanese', false, false, 228, 50);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Zorine', 'Carbery', 32, 'Female', '175 Farragut Center', '(288) 1124601', 'zcarberyz@techcrunch.com', 'Environmental Specialist', 'Albania', 'Beder University', 'Māori', true, true, 185, 67);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Janos', 'Stanlake', 25, 'Male', '8717 Lotheville Avenue', '(154) 2978073', 'jstanlake10@infoseek.co.jp', 'Administrative Assistant IV', 'Croatia', 'University of Zadar', 'Tswana', true, true, 120, 85);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Josiah', 'Nazareth', 55, 'Male', '0185 Shopko Street', '(745) 8222112', 'jnazareth11@taobao.com', 'Senior Financial Analyst', 'Indonesia', 'Universitas Islam Riau', 'Swahili', false, false, 135, 93);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Rhetta', 'Maharg', 45, 'Female', '658 Oak Valley Alley', '(815) 1194304', 'rmaharg12@aol.com', 'Senior Cost Accountant', 'Niger', 'Université Abdou Moumouni de Niamey', 'Croatian', true, false, 147, 102);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Selig', 'Scroggs', 27, 'Male', '185 2nd Trail', '(473) 6258854', 'sscroggs13@hhs.gov', 'Information Systems Manager', 'Indonesia', 'Universitas Kristen Indonesia Tomohon', 'Estonian', true, false, 229, 64);
ОШИБКА:  значение не умещается в тип character(1)
postgres3=# alter table people alter column gender varchar(50);
ОШИБКА:  ошибка синтаксиса (примерное положение: "varchar")
СТРОКА 1: alter table people alter column gender varchar(50);
                                                 ^
postgres3=# alter table people alter column gender varchar (50) not null;
ОШИБКА:  ошибка синтаксиса (примерное положение: "varchar")
СТРОКА 1: alter table people alter column gender varchar (50) not null...
                                                 ^
postgres3=# alter table people alter column gender nvarchar (50) not null;
ОШИБКА:  ошибка синтаксиса (примерное положение: "nvarchar")
СТРОКА 1: alter table people alter column gender nvarchar (50) not nul...
                                                 ^
postgres3=# alter table people alter column gender type varchar (50) not null;
ОШИБКА:  ошибка синтаксиса (примерное положение: "not")
СТРОКА 1: ...table people alter column gender type varchar (50) not null;
                                                                ^
postgres3=# alter table people alter column gender type varchar;
ALTER TABLE
postgres3=# select * from people;
 person_id | first_name | last_name | age | gender |       address        | phone_number  |     email      |   occupation   | nationality |   education    | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+----------------------+---------------+----------------+----------------+-------------+----------------+----------+------------+--------------+--------+--------
         1 | Sam        | Anders    |  34 | M      | jibek-jolu str 34    | +996700565678 | sam@gmail.com  | bartender      | kyrgyz      | master dergree | kyrgyz   | t          | t            |   1.79 |   78.6
         2 | Leo        | Messi     |  35 | M      | aitmatova str 57     | +996708456378 | leo@gmail.com  | footballer     | argentinian | master degree  | spanish  | t          | t            |   1.69 |     72
         3 | Mike       | Meyers    |  27 | M      | baitik-baatyr str 48 | +996700285696 | mike@gmail.com | ceo of company | english     | master degree  | english  | f          | f            |    1.8 |   80.2
(3 ёЄЁюъш)


postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Lauritz', 'Whatsize', 49, 'Male', '3855 Declaration Avenue', '(949) 9383169', 'lwhatsize0@csmonitor.com', 'Structural Analysis Engineer', 'Iran', 'Yazd Medical University', 'Kazakh', false, false, 109, 120);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Etta', 'Joules', 15, 'Female', '1 Little Fleur Circle', '(747) 6895499', 'ejoules1@weather.com', 'Structural Engineer', 'Albania', 'Polytechnic University of Tirane', 'Malay', true, true, 106, 59);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Loralyn', 'Skelhorn', 71, 'Female', '45 Arizona Parkway', '(213) 8925684', 'lskelhorn2@istockphoto.com', 'Assistant Professor', 'Indonesia', 'Universitas 17 Agustus 1945 Banyuwangi', 'Catalan', true, true, 155, 117);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Fawne', 'Andrews', 54, 'Female', '365 Hansons Avenue', '(755) 9285401', 'fandrews3@a8.net', 'VP Product Management', 'France', 'Ecole Polytechnique Marseille', 'Montenegrin', false, true, 159, 75);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Edwin', 'Simeonov', 25, 'Male', '889 Rieder Terrace', '(227) 6305063', 'esimeonov4@webmd.com', 'Operator', 'China', 'Jiangsu University of Science and Technology', 'Albanian', true, false, 105, 84);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Ignace', 'Curnnokk', 60, 'Male', '0 Center Parkway', '(551) 5800839', 'icurnnokk5@meetup.com', 'Programmer II', 'Ukraine', 'Ivano-Frankivsk National University of Oli and Gas', 'Swahili', false, false, 202, 103);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Eamon', 'Cheeseman', 58, 'Male', '03 Ridgeview Way', '(973) 3844019', 'echeeseman6@statcounter.com', 'Health Coach III', 'Estonia', 'Estonian Academy of Music and Theatre', 'Sotho', true, true, 207, 63);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Addi', 'Dwelling', 74, 'Female', '47 Declaration Pass', '(278) 4368780', 'adwelling7@eventbrite.com', 'Accounting Assistant II', 'China', 'China University of Mining Technology - Beijing', 'Hiri Motu', false, true, 122, 96);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Wilow', 'Giannassi', 48, 'Female', '354 Reindahl Hill', '(640) 7050043', 'wgiannassi8@google.fr', 'Desktop Support Technician', 'Ireland', 'Dublin Institute for Advanced Studies', 'Polish', false, false, 147, 85);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Latisha', 'Ivanishin', 25, 'Female', '2 Colorado Crossing', '(873) 3919592', 'livanishin9@g.co', 'Nuclear Power Engineer', 'Sweden', 'Royal lnstitute of Technology', 'Arabic', false, false, 123, 102);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Rollie', 'Arden', 33, 'Male', '46 Express Parkway', '(384) 4353937', 'rardena@e-recht24.de', 'Software Test Engineer III', 'Iran', 'Isfahan University', 'Hindi', true, false, 108, 52);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Hymie', 'Stringfellow', 18, 'Male', '623 Eggendart Crossing', '(286) 9427568', 'hstringfellowb@state.tx.us', 'Research Assistant III', 'Philippines', 'University of the East, Ramon Magsaysay Memorial Medical Center', 'Kyrgyz', false, false, 190, 62);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Osmond', 'Furness', 44, 'Male', '903 Oriole Lane', '(869) 9383143', 'ofurnessc@dedecms.com', 'Developer II', 'China', 'Inner Mongolia Normal University', 'Kannada', true, false, 143, 119);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Maybelle', 'Dain', 44, 'Female', '71473 Tomscot Plaza', '(133) 9148333', 'mdaind@g.co', 'Human Resources Manager', 'China', 'Huanghe Science & Technology University', 'Mongolian', true, true, 111, 105);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Zacharia', 'Gent', 45, 'Male', '5 Talisman Park', '(231) 8792421', 'zgente@posterous.com', 'Dental Hygienist', 'Indonesia', 'Universitas Slamet Riyadi Surakarta', 'Belarusian', true, false, 164, 96);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Darsey', 'McGivena', 51, 'Female', '799 Sommers Alley', '(303) 7093269', 'dmcgivenaf@salon.com', 'Budget/Accounting Analyst I', 'Philippines', 'Wesleyan University Philippines', 'Malayalam', false, false, 152, 93);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Arlyn', 'Karlsen', 64, 'Female', '8 Aberg Trail', '(194) 8557201', 'akarlseng@house.gov', 'Payment Adjustment Coordinator', 'Japan', 'Nippon Medical School', 'Estonian', true, false, 166, 103);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Aileen', 'Gaishson', 66, 'Female', '9100 Bayside Pass', '(915) 3753279', 'agaishsonh@wikia.com', 'VP Accounting', 'Israel', 'Russell Berrie Nanotechnology Institute', 'Hungarian', false, false, 114, 52);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Neddie', 'Berkley', 23, 'Male', '18 Thackeray Road', '(837) 5101009', 'nberkleyi@qq.com', 'Software Test Engineer II', 'Philippines', 'Central Philippine University', 'Dutch', false, true, 205, 99);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Johannes', 'Daughton', 29, 'Male', '37 Acker Place', '(526) 8118211', 'jdaughtonj@mac.com', 'Electrical Engineer', 'China', 'Guizhou Normal University', 'Bislama', false, true, 218, 73);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Brooks', 'Fiddyment', 58, 'Female', '36823 Rigney Alley', '(502) 1778971', 'bfiddymentk@ibm.com', 'Recruiting Manager', 'United States', 'Washington College', 'Polish', true, true, 170, 105);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Cally', 'Sowthcote', 52, 'Female', '0 Hintze Park', '(880) 6837178', 'csowthcotel@yandex.ru', 'Clinical Specialist', 'Brazil', 'Universidade do Rio Grande', 'Lithuanian', false, true, 152, 41);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Zandra', 'Lodder', 32, 'Female', '835 Buhler Trail', '(418) 5306885', 'zlodderm@admin.ch', 'Financial Advisor', 'Belarus', 'Minsk Institute of Management', 'Swahili', true, false, 142, 84);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Redford', 'Mussett', 35, 'Male', '9382 Hayes Avenue', '(363) 2023845', 'rmussettn@dion.ne.jp', 'General Manager', 'Saint Barthelemy', 'The College of The Bahamas', 'Tok Pisin', false, false, 179, 79);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Abner', 'McClinton', 60, 'Male', '8360 Emmet Center', '(169) 9535987', 'amcclintono@seattletimes.com', 'Human Resources Assistant I', 'China', 'Chongqing Normal University Foreign Trade and Business College', 'Indonesian', true, true, 132, 44);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Clive', 'Vearnals', 46, 'Male', '56 Sheridan Plaza', '(523) 1555191', 'cvearnalsp@accuweather.com', 'Administrative Assistant II', 'Indonesia', 'Universitas Tarumanagara', 'Tok Pisin', false, true, 126, 54);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Wells', 'Liles', 47, 'Male', '72671 Claremont Place', '(455) 1261507', 'wlilesq@artisteer.com', 'Dental Hygienist', 'Brazil', 'Universidade Católica de Salvador', 'Telugu', true, false, 181, 75);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Kit', 'Lillgard', 54, 'Male', '72061 Amoth Park', '(953) 6837652', 'klillgardr@seesaa.net', 'Registered Nurse', 'Bulgaria', 'Medical University Pleven', 'Assamese', false, true, 208, 58);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Flint', 'Brownjohn', 59, 'Male', '1205 Huxley Hill', '(646) 5148628', 'fbrownjohns@chron.com', 'Administrative Officer', 'China', 'Shanghai Lida Polytechnic Institute', 'Tetum', false, true, 184, 96);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Jorie', 'Jay', 79, 'Female', '70688 Stuart Hill', '(649) 7582538', 'jjayt@skype.com', 'VP Product Management', 'Azerbaijan', 'Academy of Public Administration', 'Māori', false, true, 182, 42);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Layla', 'deKnevet', 54, 'Female', '9 Green Ridge Circle', '(515) 6378757', 'ldeknevetu@ted.com', 'Registered Nurse', 'Vietnam', 'Tay Nguyen University', 'Lao', false, false, 191, 89);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Leif', 'Tingly', 51, 'Male', '2407 Nevada Junction', '(596) 4347850', 'ltinglyv@wikipedia.org', 'Associate Professor', 'Philippines', 'Misamis University', 'Aymara', true, false, 164, 43);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Cash', 'Esilmon', 69, 'Male', '531 Bobwhite Road', '(275) 1440835', 'cesilmonw@google.it', 'VP Product Management', 'China', 'South China Construction University', 'Dzongkha', false, false, 125, 55);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Isahella', 'Antonazzi', 44, 'Female', '8248 Fulton Lane', '(898) 9762728', 'iantonazzix@ft.com', 'Project Manager', 'Netherlands', 'Utrecht University', 'Amharic', false, false, 106, 110);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Hedy', 'Erickssen', 53, 'Female', '9953 Heffernan Plaza', '(574) 4619363', 'hericksseny@live.com', 'VP Quality Control', 'Peru', 'Universidad Señor de Sipán', 'English', true, true, 118, 98);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Ermina', 'Pharo', 63, 'Female', '9 Pawling Terrace', '(866) 1897071', 'epharoz@hc360.com', 'Chief Design Engineer', 'Greece', 'Aristotle University of Thessaloniki', 'Estonian', false, true, 202, 71);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Putnam', 'McGonigle', 72, 'Male', '38 Rowland Circle', '(782) 1907998', 'pmcgonigle10@mashable.com', 'Database Administrator I', 'Argentina', 'Universidad Argentina "John F. Kennedy"', 'Portuguese', false, true, 102, 99);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Karlyn', 'Pankhurst.', 36, 'Female', '250 Springs Terrace', '(569) 9709310', 'kpankhurst11@cargocollective.com', 'Safety Technician I', 'Finland', 'Central Ostrobothnia University of Applied Sciences', 'Kazakh', true, false, 168, 82);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Alwyn', 'Kelwaybamber', 67, 'Male', '13673 Cody Alley', '(612) 9321633', 'akelwaybamber12@github.io', 'Cost Accountant', 'Poland', 'Silesian Academy of Medicine in Katowice', 'Amharic', false, false, 152, 82);
INSERT 0 1
postgres3=# insert into people (first_name, last_name, age, gender, address, phone_number, email, occupation, nationality, education, language, is_married, has_children, height, weight) values ('Read', 'Bottle', 20, 'Male', '4131 Nevada Alley', '(294) 1763810', 'rbottle13@usda.gov', 'VP Marketing', 'Colombia', 'Universidad Santiago de Cali', 'Aymara', true, true, 204, 115);
INSERT 0 1
postgres3=# select *from people;
 person_id | first_name |  last_name   | age | gender |         address         | phone_number  |              email               |           occupation           |   nationality    |                            education                            |  language   | is_married | has_children | height | weight
-----------+------------+--------------+-----+--------+-------------------------+---------------+----------------------------------+--------------------------------+------------------+-----------------------------------------------------------------+-------------+------------+--------------+--------+--------
         1 | Sam        | Anders       |  34 | M      | jibek-jolu str 34       | +996700565678 | sam@gmail.com                    | bartender                      | kyrgyz           | master dergree                                                  | kyrgyz      | t          | t            |   1.79 |   78.6
         2 | Leo        | Messi        |  35 | M      | aitmatova str 57        | +996708456378 | leo@gmail.com                    | footballer                     | argentinian      | master degree                                                   | spanish     | t          | t            |   1.69 |     72
         3 | Mike       | Meyers       |  27 | M      | baitik-baatyr str 48    | +996700285696 | mike@gmail.com                   | ceo of company                 | english          | master degree                                                   | english     | f          | f            |    1.8 |   80.2
         4 | Lauritz    | Whatsize     |  49 | Male   | 3855 Declaration Avenue | (949) 9383169 | lwhatsize0@csmonitor.com         | Structural Analysis Engineer   | Iran             | Yazd Medical University                                         | Kazakh      | f          | f            |    109 |    120
         5 | Etta       | Joules       |  15 | Female | 1 Little Fleur Circle   | (747) 6895499 | ejoules1@weather.com             | Structural Engineer            | Albania          | Polytechnic University of Tirane                                | Malay       | t          | t            |    106 |     59
         6 | Loralyn    | Skelhorn     |  71 | Female | 45 Arizona Parkway      | (213) 8925684 | lskelhorn2@istockphoto.com       | Assistant Professor            | Indonesia        | Universitas 17 Agustus 1945 Banyuwangi                          | Catalan     | t          | t            |    155 |    117
         7 | Fawne      | Andrews      |  54 | Female | 365 Hansons Avenue      | (755) 9285401 | fandrews3@a8.net                 | VP Product Management          | France           | Ecole Polytechnique Marseille                                   | Montenegrin | f          | t            |    159 |     75
         8 | Edwin      | Simeonov     |  25 | Male   | 889 Rieder Terrace      | (227) 6305063 | esimeonov4@webmd.com             | Operator                       | China            | Jiangsu University of Science and Technology                    | Albanian    | t          | f            |    105 |     84
         9 | Ignace     | Curnnokk     |  60 | Male   | 0 Center Parkway        | (551) 5800839 | icurnnokk5@meetup.com            | Programmer II                  | Ukraine          | Ivano-Frankivsk National University of Oli and Gas              | Swahili     | f          | f            |    202 |    103
        10 | Eamon      | Cheeseman    |  58 | Male   | 03 Ridgeview Way        | (973) 3844019 | echeeseman6@statcounter.com      | Health Coach III               | Estonia          | Estonian Academy of Music and Theatre                           | Sotho       | t          | t            |    207 |     63
        11 | Addi       | Dwelling     |  74 | Female | 47 Declaration Pass     | (278) 4368780 | adwelling7@eventbrite.com        | Accounting Assistant II        | China            | China University of Mining Technology - Beijing                 | Hiri Motu   | f          | t            |    122 |     96
        12 | Wilow      | Giannassi    |  48 | Female | 354 Reindahl Hill       | (640) 7050043 | wgiannassi8@google.fr            | Desktop Support Technician     | Ireland          | Dublin Institute for Advanced Studies                           | Polish      | f          | f            |    147 |     85
        13 | Latisha    | Ivanishin    |  25 | Female | 2 Colorado Crossing     | (873) 3919592 | livanishin9@g.co                 | Nuclear Power Engineer         | Sweden           | Royal lnstitute of Technology                                   | Arabic      | f          | f            |    123 |    102
        14 | Rollie     | Arden        |  33 | Male   | 46 Express Parkway      | (384) 4353937 | rardena@e-recht24.de             | Software Test Engineer III     | Iran             | Isfahan University                                              | Hindi       | t          | f            |    108 |     52
        15 | Hymie      | Stringfellow |  18 | Male   | 623 Eggendart Crossing  | (286) 9427568 | hstringfellowb@state.tx.us       | Research Assistant III         | Philippines      | University of the East, Ramon Magsaysay Memorial Medical Center | Kyrgyz      | f          | f            |    190 |     62
        16 | Osmond     | Furness      |  44 | Male   | 903 Oriole Lane         | (869) 9383143 | ofurnessc@dedecms.com            | Developer II                   | China            | Inner Mongolia Normal University                                | Kannada     | t          | f            |    143 |    119
        17 | Maybelle   | Dain         |  44 | Female | 71473 Tomscot Plaza     | (133) 9148333 | mdaind@g.co                      | Human Resources Manager        | China            | Huanghe Science & Technology University                         | Mongolian   | t          | t            |    111 |    105
        18 | Zacharia   | Gent         |  45 | Male   | 5 Talisman Park         | (231) 8792421 | zgente@posterous.com             | Dental Hygienist               | Indonesia        | Universitas Slamet Riyadi Surakarta                             | Belarusian  | t          | f            |    164 |     96
        19 | Darsey     | McGivena     |  51 | Female | 799 Sommers Alley       | (303) 7093269 | dmcgivenaf@salon.com             | Budget/Accounting Analyst I    | Philippines      | Wesleyan University Philippines                                 | Malayalam   | f          | f            |    152 |     93
        20 | Arlyn      | Karlsen      |  64 | Female | 8 Aberg Trail           | (194) 8557201 | akarlseng@house.gov              | Payment Adjustment Coordinator | Japan            | Nippon Medical School                                           | Estonian    | t          | f            |    166 |    103
        21 | Aileen     | Gaishson     |  66 | Female | 9100 Bayside Pass       | (915) 3753279 | agaishsonh@wikia.com             | VP Accounting                  | Israel           | Russell Berrie Nanotechnology Institute                         | Hungarian   | f          | f            |    114 |     52
        22 | Neddie     | Berkley      |  23 | Male   | 18 Thackeray Road       | (837) 5101009 | nberkleyi@qq.com                 | Software Test Engineer II      | Philippines      | Central Philippine University                                   | Dutch       | f          | t            |    205 |     99
        23 | Johannes   | Daughton     |  29 | Male   | 37 Acker Place          | (526) 8118211 | jdaughtonj@mac.com               | Electrical Engineer            | China            | Guizhou Normal University                                       | Bislama     | f          | t            |    218 |     73
        24 | Brooks     | Fiddyment    |  58 | Female | 36823 Rigney Alley      | (502) 1778971 | bfiddymentk@ibm.com              | Recruiting Manager             | United States    | Washington College                                              | Polish      | t          | t            |    170 |    105
        25 | Cally      | Sowthcote    |  52 | Female | 0 Hintze Park           | (880) 6837178 | csowthcotel@yandex.ru            | Clinical Specialist            | Brazil           | Universidade do Rio Grande                                      | Lithuanian  | f          | t            |    152 |     41
        26 | Zandra     | Lodder       |  32 | Female | 835 Buhler Trail        | (418) 5306885 | zlodderm@admin.ch                | Financial Advisor              | Belarus          | Minsk Institute of Management                                   | Swahili     | t          | f            |    142 |     84
        27 | Redford    | Mussett      |  35 | Male   | 9382 Hayes Avenue       | (363) 2023845 | rmussettn@dion.ne.jp             | General Manager                | Saint Barthelemy | The College of The Bahamas                                      | Tok Pisin   | f          | f            |    179 |     79
        28 | Abner      | McClinton    |  60 | Male   | 8360 Emmet Center       | (169) 9535987 | amcclintono@seattletimes.com     | Human Resources Assistant I    | China            | Chongqing Normal University Foreign Trade and Business College  | Indonesian  | t          | t            |    132 |     44
        29 | Clive      | Vearnals     |  46 | Male   | 56 Sheridan Plaza       | (523) 1555191 | cvearnalsp@accuweather.com       | Administrative Assistant II    | Indonesia        | Universitas Tarumanagara                                        | Tok Pisin   | f          | t            |    126 |     54
        30 | Wells      | Liles        |  47 | Male   | 72671 Claremont Place   | (455) 1261507 | wlilesq@artisteer.com            | Dental Hygienist               | Brazil           | Universidade Catolica de Salvador                               | Telugu      | t          | f            |    181 |     75
        31 | Kit        | Lillgard     |  54 | Male   | 72061 Amoth Park        | (953) 6837652 | klillgardr@seesaa.net            | Registered Nurse               | Bulgaria         | Medical University Pleven                                       | Assamese    | f          | t            |    208 |     58
        32 | Flint      | Brownjohn    |  59 | Male   | 1205 Huxley Hill        | (646) 5148628 | fbrownjohns@chron.com            | Administrative Officer         | China            | Shanghai Lida Polytechnic Institute                             | Tetum       | f          | t            |    184 |     96
        33 | Jorie      | Jay          |  79 | Female | 70688 Stuart Hill       | (649) 7582538 | jjayt@skype.com                  | VP Product Management          | Azerbaijan       | Academy of Public Administration                                | Maori       | f          | t            |    182 |     42
        34 | Layla      | deKnevet     |  54 | Female | 9 Green Ridge Circle    | (515) 6378757 | ldeknevetu@ted.com               | Registered Nurse               | Vietnam          | Tay Nguyen University                                           | Lao         | f          | f            |    191 |     89
        35 | Leif       | Tingly       |  51 | Male   | 2407 Nevada Junction    | (596) 4347850 | ltinglyv@wikipedia.org           | Associate Professor            | Philippines      | Misamis University                                              | Aymara      | t          | f            |    164 |     43
        36 | Cash       | Esilmon      |  69 | Male   | 531 Bobwhite Road       | (275) 1440835 | cesilmonw@google.it              | VP Product Management          | China            | South China Construction University                             | Dzongkha    | f          | f            |    125 |     55
        37 | Isahella   | Antonazzi    |  44 | Female | 8248 Fulton Lane        | (898) 9762728 | iantonazzix@ft.com               | Project Manager                | Netherlands      | Utrecht University                                              | Amharic     | f          | f            |    106 |    110
        38 | Hedy       | Erickssen    |  53 | Female | 9953 Heffernan Plaza    | (574) 4619363 | hericksseny@live.com             | VP Quality Control             | Peru             | Universidad Senor de Sipan                                      | English     | t          | t            |    118 |     98
        39 | Ermina     | Pharo        |  63 | Female | 9 Pawling Terrace       | (866) 1897071 | epharoz@hc360.com                | Chief Design Engineer          | Greece           | Aristotle University of Thessaloniki                            | Estonian    | f          | t            |    202 |     71
        40 | Putnam     | McGonigle    |  72 | Male   | 38 Rowland Circle       | (782) 1907998 | pmcgonigle10@mashable.com        | Database Administrator I       | Argentina        | Universidad Argentina "John F. Kennedy"                         | Portuguese  | f          | t            |    102 |     99
        41 | Karlyn     | Pankhurst.   |  36 | Female | 250 Springs Terrace     | (569) 9709310 | kpankhurst11@cargocollective.com | Safety Technician I            | Finland          | Central Ostrobothnia University of Applied Sciences             | Kazakh      | t          | f            |    168 |     82
        42 | Alwyn      | Kelwaybamber |  67 | Male   | 13673 Cody Alley        | (612) 9321633 | akelwaybamber12@github.io        | Cost Accountant                | Poland           | Silesian Academy of Medicine in Katowice                        | Amharic     | f          | f            |    152 |     82
        43 | Read       | Bottle       |  20 | Male   | 4131 Nevada Alley       | (294) 1763810 | rbottle13@usda.gov               | VP Marketing                   | Colombia         | Universidad Santiago de Cali                                    | Aymara      | t          | t            |    204 |    115
(43 ёЄЁюъш)


postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=# select * from people where id 4 update column address as'Гражданская 119';
ОШИБКА:  ошибка синтаксиса (примерное положение: "4")
СТРОКА 1: select * from people where id 4 update column address as'?а ...
                                        ^
postgres3=# select * from people where address;
ОШИБКА:  аргумент конструкции WHERE должен иметь тип boolean, а не character varying
СТРОКА 1: select * from people where address;
                                     ^
postgres3=# select * from people where id in (4);
ОШИБКА:  столбец "id" не существует
СТРОКА 1: select * from people where id in (4);
                                     ^
postgres3=# select * from people where person_id in(4);
 person_id | first_name | last_name | age | gender |         address         | phone_number  |          email           |          occupation          | nationality |        education        | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+-------------------------+---------------+--------------------------+------------------------------+-------------+-------------------------+----------+------------+--------------+--------+--------
         4 | Lauritz    | Whatsize  |  49 | Male   | 3855 Declaration Avenue | (949) 9383169 | lwhatsize0@csmonitor.com | Structural Analysis Engineer | Iran        | Yazd Medical University | Kazakh   | f          | f            |    109 |    120
(1 ёЄЁюър)


postgres3=# select * from people where person_id in(4)update column 'Гражданская 119';
ОШИБКА:  ошибка синтаксиса (примерное положение: "update")
СТРОКА 1: select * from people where person_id in(4)update column '?а ...
                                                    ^
postgres3=# update people set address='Гражданская 119'where person_id =4;
UPDATE 1
postgres3=# select * from people where person_id in(4);
 person_id | first_name | last_name | age | gender |     address     | phone_number  |          email           |          occupation          | nationality |        education        | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+-----------------+---------------+--------------------------+------------------------------+-------------+-------------------------+----------+------------+--------------+--------+--------
         4 | Lauritz    | Whatsize  |  49 | Male   | Гражданская 119 | (949) 9383169 | lwhatsize0@csmonitor.com | Structural Analysis Engineer | Iran        | Yazd Medical University | Kazakh   | f          | f            |    109 |    120
(1 ёЄЁюър)


postgres3=# update people set email 'danny@gmail.com'where person_id=4 and set occupation 'Engineer Analityc'where person_id=4;
ОШИБКА:  ошибка синтаксиса (примерное положение: "'danny@gmail.com'")
СТРОКА 1: update people set email 'danny@gmail.com'where person_id=4 a...
                                  ^
postgres3=# update people set email = 'danny@gmail.com',occupation = 'Analytic Engineer';
ОШИБКА:  повторяющееся значение ключа нарушает ограничение уникальности "people_email_key"
ПОДРОБНОСТИ:  Ключ "(email)=(danny@gmail.com)" уже существует.
postgres3=# update people set email = '199938ddd@gmail.com',occupation = 'Analytic Engineer';
ОШИБКА:  повторяющееся значение ключа нарушает ограничение уникальности "people_email_key"
ПОДРОБНОСТИ:  Ключ "(email)=(199938ddd@gmail.com)" уже существует.
postgres3=# select * from people where id in(4);
ОШИБКА:  столбец "id" не существует
СТРОКА 1: select * from people where id in(4);
                                     ^
postgres3=# select * from people where person_id in (4);
 person_id | first_name | last_name | age | gender |     address     | phone_number  |          email           |          occupation          | nationality |        education        | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+-----------------+---------------+--------------------------+------------------------------+-------------+-------------------------+----------+------------+--------------+--------+--------
         4 | Lauritz    | Whatsize  |  49 | Male   | Гражданская 119 | (949) 9383169 | lwhatsize0@csmonitor.com | Structural Analysis Engineer | Iran        | Yazd Medical University | Kazakh   | f          | f            |    109 |    120
(1 ёЄЁюър)


postgres3=# update people set email = 'gggjjj22@gmail.com',occupation = 'Analytic Engineer' where person_id in (4);
UPDATE 1
postgres3=# select * from people where person_id in (4);
 person_id | first_name | last_name | age | gender |     address     | phone_number  |       email        |    occupation     | nationality |        education        | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+-----------------+---------------+--------------------+-------------------+-------------+-------------------------+----------+------------+--------------+--------+--------
         4 | Lauritz    | Whatsize  |  49 | Male   | Гражданская 119 | (949) 9383169 | gggjjj22@gmail.com | Analytic Engineer | Iran        | Yazd Medical University | Kazakh   | f          | f            |    109 |    120
(1 ёЄЁюър)


postgres3=# delete people where person_id in(4);
ОШИБКА:  ошибка синтаксиса (примерное положение: "people")
СТРОКА 1: delete people where person_id in(4);
                 ^
postgres3=# delete people where person_id(1);
ОШИБКА:  ошибка синтаксиса (примерное положение: "people")
СТРОКА 1: delete people where person_id(1);
                 ^
postgres3=# select * from people where person_id in (4);
 person_id | first_name | last_name | age | gender |     address     | phone_number  |       email        |    occupation     | nationality |        education        | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+-----------------+---------------+--------------------+-------------------+-------------+-------------------------+----------+------------+--------------+--------+--------
         4 | Lauritz    | Whatsize  |  49 | Male   | Гражданская 119 | (949) 9383169 | gggjjj22@gmail.com | Analytic Engineer | Iran        | Yazd Medical University | Kazakh   | f          | f            |    109 |    120
(1 ёЄЁюър)


postgres3=# select * from people where person_id in(1);
 person_id | first_name | last_name | age | gender |      address      | phone_number  |     email     | occupation | nationality |   education    | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+-------------------+---------------+---------------+------------+-------------+----------------+----------+------------+--------------+--------+--------
         1 | Sam        | Anders    |  34 | M      | jibek-jolu str 34 | +996700565678 | sam@gmail.com | bartender  | kyrgyz      | master dergree | kyrgyz   | t          | t            |   1.79 |   78.6
(1 ёЄЁюър)


postgres3=# delete *from people where person_id in(1);
ОШИБКА:  ошибка синтаксиса (примерное положение: "*")
СТРОКА 1: delete *from people where person_id in(1);
                 ^
postgres3=# drop * from people where person_id in(1);
ОШИБКА:  ошибка синтаксиса (примерное положение: "*")
СТРОКА 1: drop * from people where person_id in(1);
               ^
postgres3=# delete people where person_id in (1);
ОШИБКА:  ошибка синтаксиса (примерное положение: "people")
СТРОКА 1: delete people where person_id in (1);
                 ^
postgres3=# delete * from people where person_id in (1);
ОШИБКА:  ошибка синтаксиса (примерное положение: "*")
СТРОКА 1: delete * from people where person_id in (1);
                 ^
postgres3=# delete from people where person_id = 1;
DELETE 1
postgres3=# select *from people where person_id=1;
 person_id | first_name | last_name | age | gender | address | phone_number | email | occupation | nationality | education | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+---------+--------------+-------+------------+-------------+-----------+----------+------------+--------------+--------+--------
(0 ёЄЁюъ)


postgres3=# select (person_id)from people;
 person_id
-----------
         2
         3
         5
         6
         7
         8
         9
        10
        11
        12
        13
        14
        15
        16
        17
        18
        19
        20
        21
        22
        23
        24
        25
        26
        27
        28
        29
        30
        31
        32
        33
        34
        35
        36
        37
        38
        39
        40
        41
        42
        43
         4
(42 ёЄЁюъш)


postgres3=# select *from people where nationality='USA';
 person_id | first_name | last_name | age | gender | address | phone_number | email | occupation | nationality | education | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+---------+--------------+-------+------------+-------------+-----------+----------+------------+--------------+--------+--------
(0 ёЄЁюъ)


postgres3=# selec *from people order by'Engineer'desc limit 10 offset 25;
ОШИБКА:  ошибка синтаксиса (примерное положение: "selec")
СТРОКА 1: selec *from people order by'Engineer'desc limit 10 offset 25...
          ^
postgres3=# select *from people order by'Engineer'desc limit 10 offset 25;
ОШИБКА:  не целочисленная константа в ORDER BY
СТРОКА 1: select *from people order by'Engineer'desc limit 10 offset 2...
                                      ^
postgres3=# select 'Engineer' from people;
 ?column?
----------
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
 Engineer
(42 ёЄЁюъш)


postgres3=#
postgres3=# select *from people where occupation 'Engineer';
ОШИБКА:  тип "occupation" не существует
СТРОКА 1: select *from people where occupation 'Engineer';
                                    ^
postgres3=# select *from people where person_id=4;
 person_id | first_name | last_name | age | gender |     address     | phone_number  |       email        |    occupation     | nationality |        education        | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+-----------------+---------------+--------------------+-------------------+-------------+-------------------------+----------+------------+--------------+--------+--------
         4 | Lauritz    | Whatsize  |  49 | Male   | Гражданская 119 | (949) 9383169 | gggjjj22@gmail.com | Analytic Engineer | Iran        | Yazd Medical University | Kazakh   | f          | f            |    109 |    120
(1 ёЄЁюър)


postgres3=# select *from people where occupation ='Engineer';
 person_id | first_name | last_name | age | gender | address | phone_number | email | occupation | nationality | education | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+---------+--------------+-------+------------+-------------+-----------+----------+------------+--------------+--------+--------
(0 ёЄЁюъ)


postgres3=# select *from people where occupation like 'engineer';
 person_id | first_name | last_name | age | gender | address | phone_number | email | occupation | nationality | education | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+---------+--------------+-------+------------+-------------+-----------+----------+------------+--------------+--------+--------
(0 ёЄЁюъ)


postgres3=# select *from people where occupation like '% engineer';
 person_id | first_name | last_name | age | gender | address | phone_number | email | occupation | nationality | education | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+---------+--------------+-------+------------+-------------+-----------+----------+------------+--------------+--------+--------
(0 ёЄЁюъ)


postgres3=# select *from people where occupation ilike '% engineer';
 person_id | first_name | last_name | age | gender |        address        | phone_number  |        email         |       occupation       | nationality |              education               | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+-----------------------+---------------+----------------------+------------------------+-------------+--------------------------------------+----------+------------+--------------+--------+--------
         5 | Etta       | Joules    |  15 | Female | 1 Little Fleur Circle | (747) 6895499 | ejoules1@weather.com | Structural Engineer    | Albania     | Polytechnic University of Tirane     | Malay    | t          | t            |    106 |     59
        13 | Latisha    | Ivanishin |  25 | Female | 2 Colorado Crossing   | (873) 3919592 | livanishin9@g.co     | Nuclear Power Engineer | Sweden      | Royal lnstitute of Technology        | Arabic   | f          | f            |    123 |    102
        23 | Johannes   | Daughton  |  29 | Male   | 37 Acker Place        | (526) 8118211 | jdaughtonj@mac.com   | Electrical Engineer    | China       | Guizhou Normal University            | Bislama  | f          | t            |    218 |     73
        39 | Ermina     | Pharo     |  63 | Female | 9 Pawling Terrace     | (866) 1897071 | epharoz@hc360.com    | Chief Design Engineer  | Greece      | Aristotle University of Thessaloniki | Estonian | f          | t            |    202 |     71
         4 | Lauritz    | Whatsize  |  49 | Male   | Гражданская 119       | (949) 9383169 | gggjjj22@gmail.com   | Analytic Engineer      | Iran        | Yazd Medical University              | Kazakh   | f          | f            |    109 |    120
(5 ёЄЁюъ)


postgres3=# select is_married,count(*)from people group by is_married count(*)desc;
ОШИБКА:  ошибка синтаксиса (примерное положение: "count")
СТРОКА 1: ...s_married,count(*)from people group by is_married count(*)de...
                                                               ^
postgres3=# select is_married,count(*)from people group by is_married count(*)desc limit *;
ОШИБКА:  ошибка синтаксиса (примерное положение: "count")
СТРОКА 1: ...s_married,count(*)from people group by is_married count(*)de...
                                                               ^
postgres3=# select * from people where is_married = true and has_children = true;
 person_id | first_name | last_name | age | gender |        address        | phone_number  |            email             |         occupation          |  nationality  |                           education                            |  language  | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+-----------------------+---------------+------------------------------+-----------------------------+---------------+----------------------------------------------------------------+------------+------------+--------------+--------+--------
         2 | Leo        | Messi     |  35 | M      | aitmatova str 57      | +996708456378 | leo@gmail.com                | footballer                  | argentinian   | master degree                                                  | spanish    | t          | t            |   1.69 |     72
         5 | Etta       | Joules    |  15 | Female | 1 Little Fleur Circle | (747) 6895499 | ejoules1@weather.com         | Structural Engineer         | Albania       | Polytechnic University of Tirane                               | Malay      | t          | t            |    106 |     59
         6 | Loralyn    | Skelhorn  |  71 | Female | 45 Arizona Parkway    | (213) 8925684 | lskelhorn2@istockphoto.com   | Assistant Professor         | Indonesia     | Universitas 17 Agustus 1945 Banyuwangi                         | Catalan    | t          | t            |    155 |    117
        10 | Eamon      | Cheeseman |  58 | Male   | 03 Ridgeview Way      | (973) 3844019 | echeeseman6@statcounter.com  | Health Coach III            | Estonia       | Estonian Academy of Music and Theatre                          | Sotho      | t          | t            |    207 |     63
        17 | Maybelle   | Dain      |  44 | Female | 71473 Tomscot Plaza   | (133) 9148333 | mdaind@g.co                  | Human Resources Manager     | China         | Huanghe Science & Technology University                        | Mongolian  | t          | t            |    111 |    105
        24 | Brooks     | Fiddyment |  58 | Female | 36823 Rigney Alley    | (502) 1778971 | bfiddymentk@ibm.com          | Recruiting Manager          | United States | Washington College                                             | Polish     | t          | t            |    170 |    105
        28 | Abner      | McClinton |  60 | Male   | 8360 Emmet Center     | (169) 9535987 | amcclintono@seattletimes.com | Human Resources Assistant I | China         | Chongqing Normal University Foreign Trade and Business College | Indonesian | t          | t            |    132 |     44
        38 | Hedy       | Erickssen |  53 | Female | 9953 Heffernan Plaza  | (574) 4619363 | hericksseny@live.com         | VP Quality Control          | Peru          | Universidad Senor de Sipan                                     | English    | t          | t            |    118 |     98
        43 | Read       | Bottle    |  20 | Male   | 4131 Nevada Alley     | (294) 1763810 | rbottle13@usda.gov           | VP Marketing                | Colombia      | Universidad Santiago de Cali                                   | Aymara     | t          | t            |    204 |    115
(9 ёЄЁюъ)


postgres3=# select *from people where height >170.0;
 person_id | first_name |  last_name   | age | gender |        address         | phone_number  |            email            |        occupation         |   nationality    |                            education                            | language  | is_married | has_children | height | weight
-----------+------------+--------------+-----+--------+------------------------+---------------+-----------------------------+---------------------------+------------------+-----------------------------------------------------------------+-----------+------------+--------------+--------+--------
         9 | Ignace     | Curnnokk     |  60 | Male   | 0 Center Parkway       | (551) 5800839 | icurnnokk5@meetup.com       | Programmer II             | Ukraine          | Ivano-Frankivsk National University of Oli and Gas              | Swahili   | f          | f            |    202 |    103
        10 | Eamon      | Cheeseman    |  58 | Male   | 03 Ridgeview Way       | (973) 3844019 | echeeseman6@statcounter.com | Health Coach III          | Estonia          | Estonian Academy of Music and Theatre                           | Sotho     | t          | t            |    207 |     63
        15 | Hymie      | Stringfellow |  18 | Male   | 623 Eggendart Crossing | (286) 9427568 | hstringfellowb@state.tx.us  | Research Assistant III    | Philippines      | University of the East, Ramon Magsaysay Memorial Medical Center | Kyrgyz    | f          | f            |    190 |     62
        22 | Neddie     | Berkley      |  23 | Male   | 18 Thackeray Road      | (837) 5101009 | nberkleyi@qq.com            | Software Test Engineer II | Philippines      | Central Philippine University                                   | Dutch     | f          | t            |    205 |     99
        23 | Johannes   | Daughton     |  29 | Male   | 37 Acker Place         | (526) 8118211 | jdaughtonj@mac.com          | Electrical Engineer       | China            | Guizhou Normal University                                       | Bislama   | f          | t            |    218 |     73
        27 | Redford    | Mussett      |  35 | Male   | 9382 Hayes Avenue      | (363) 2023845 | rmussettn@dion.ne.jp        | General Manager           | Saint Barthelemy | The College of The Bahamas                                      | Tok Pisin | f          | f            |    179 |     79
        30 | Wells      | Liles        |  47 | Male   | 72671 Claremont Place  | (455) 1261507 | wlilesq@artisteer.com       | Dental Hygienist          | Brazil           | Universidade Catolica de Salvador                               | Telugu    | t          | f            |    181 |     75
        31 | Kit        | Lillgard     |  54 | Male   | 72061 Amoth Park       | (953) 6837652 | klillgardr@seesaa.net       | Registered Nurse          | Bulgaria         | Medical University Pleven                                       | Assamese  | f          | t            |    208 |     58
        32 | Flint      | Brownjohn    |  59 | Male   | 1205 Huxley Hill       | (646) 5148628 | fbrownjohns@chron.com       | Administrative Officer    | China            | Shanghai Lida Polytechnic Institute                             | Tetum     | f          | t            |    184 |     96
        33 | Jorie      | Jay          |  79 | Female | 70688 Stuart Hill      | (649) 7582538 | jjayt@skype.com             | VP Product Management     | Azerbaijan       | Academy of Public Administration                                | Maori     | f          | t            |    182 |     42
        34 | Layla      | deKnevet     |  54 | Female | 9 Green Ridge Circle   | (515) 6378757 | ldeknevetu@ted.com          | Registered Nurse          | Vietnam          | Tay Nguyen University                                           | Lao       | f          | f            |    191 |     89
        39 | Ermina     | Pharo        |  63 | Female | 9 Pawling Terrace      | (866) 1897071 | epharoz@hc360.com           | Chief Design Engineer     | Greece           | Aristotle University of Thessaloniki                            | Estonian  | f          | t            |    202 |     71
        43 | Read       | Bottle       |  20 | Male   | 4131 Nevada Alley      | (294) 1763810 | rbottle13@usda.gov          | VP Marketing              | Colombia         | Universidad Santiago de Cali                                    | Aymara    | t          | t            |    204 |    115
(13 ёЄЁюъ)


postgres3=# select*from people where height >170.0 in gender = 'Female';
ОШИБКА:  ошибка синтаксиса (примерное положение: "gender")
СТРОКА 1: select*from people where height >170.0 in gender = 'Female';
                                                    ^
postgres3=# select *from people where height >170.0 and gender='Female';
 person_id | first_name | last_name | age | gender |       address        | phone_number  |       email        |      occupation       | nationality |              education               | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+----------------------+---------------+--------------------+-----------------------+-------------+--------------------------------------+----------+------------+--------------+--------+--------
        33 | Jorie      | Jay       |  79 | Female | 70688 Stuart Hill    | (649) 7582538 | jjayt@skype.com    | VP Product Management | Azerbaijan  | Academy of Public Administration     | Maori    | f          | t            |    182 |     42
        34 | Layla      | deKnevet  |  54 | Female | 9 Green Ridge Circle | (515) 6378757 | ldeknevetu@ted.com | Registered Nurse      | Vietnam     | Tay Nguyen University                | Lao      | f          | f            |    191 |     89
        39 | Ermina     | Pharo     |  63 | Female | 9 Pawling Terrace    | (866) 1897071 | epharoz@hc360.com  | Chief Design Engineer | Greece      | Aristotle University of Thessaloniki | Estonian | f          | t            |    202 |     71
(3 ёЄЁюъш)


postgres3=# select *from people where weight >75 and gender'Male';
ОШИБКА:  тип "gender" не существует
СТРОКА 1: select *from people where weight >75 and gender'Male';
                                                   ^
postgres3=# select *from people where weight >75 and gender ='Male';
 person_id | first_name |  last_name   | age | gender |      address       | phone_number  |           email           |        occupation         |   nationality    |                     education                      |  language  | is_married | has_children | height | weight
-----------+------------+--------------+-----+--------+--------------------+---------------+---------------------------+---------------------------+------------------+----------------------------------------------------+------------+------------+--------------+--------+--------
         8 | Edwin      | Simeonov     |  25 | Male   | 889 Rieder Terrace | (227) 6305063 | esimeonov4@webmd.com      | Operator                  | China            | Jiangsu University of Science and Technology       | Albanian   | t          | f            |    105 |     84
         9 | Ignace     | Curnnokk     |  60 | Male   | 0 Center Parkway   | (551) 5800839 | icurnnokk5@meetup.com     | Programmer II             | Ukraine          | Ivano-Frankivsk National University of Oli and Gas | Swahili    | f          | f            |    202 |    103
        16 | Osmond     | Furness      |  44 | Male   | 903 Oriole Lane    | (869) 9383143 | ofurnessc@dedecms.com     | Developer II              | China            | Inner Mongolia Normal University                   | Kannada    | t          | f            |    143 |    119
        18 | Zacharia   | Gent         |  45 | Male   | 5 Talisman Park    | (231) 8792421 | zgente@posterous.com      | Dental Hygienist          | Indonesia        | Universitas Slamet Riyadi Surakarta                | Belarusian | t          | f            |    164 |     96
        22 | Neddie     | Berkley      |  23 | Male   | 18 Thackeray Road  | (837) 5101009 | nberkleyi@qq.com          | Software Test Engineer II | Philippines      | Central Philippine University                      | Dutch      | f          | t            |    205 |     99
        27 | Redford    | Mussett      |  35 | Male   | 9382 Hayes Avenue  | (363) 2023845 | rmussettn@dion.ne.jp      | General Manager           | Saint Barthelemy | The College of The Bahamas                         | Tok Pisin  | f          | f            |    179 |     79
        32 | Flint      | Brownjohn    |  59 | Male   | 1205 Huxley Hill   | (646) 5148628 | fbrownjohns@chron.com     | Administrative Officer    | China            | Shanghai Lida Polytechnic Institute                | Tetum      | f          | t            |    184 |     96
        40 | Putnam     | McGonigle    |  72 | Male   | 38 Rowland Circle  | (782) 1907998 | pmcgonigle10@mashable.com | Database Administrator I  | Argentina        | Universidad Argentina "John F. Kennedy"            | Portuguese | f          | t            |    102 |     99
        42 | Alwyn      | Kelwaybamber |  67 | Male   | 13673 Cody Alley   | (612) 9321633 | akelwaybamber12@github.io | Cost Accountant           | Poland           | Silesian Academy of Medicine in Katowice           | Amharic    | f          | f            |    152 |     82
        43 | Read       | Bottle       |  20 | Male   | 4131 Nevada Alley  | (294) 1763810 | rbottle13@usda.gov        | VP Marketing              | Colombia         | Universidad Santiago de Cali                       | Aymara     | t          | t            |    204 |    115
         4 | Lauritz    | Whatsize     |  49 | Male   | Гражданская 119    | (949) 9383169 | gggjjj22@gmail.com        | Analytic Engineer         | Iran             | Yazd Medical University                            | Kazakh     | f          | f            |    109 |    120
(11 ёЄЁюъ)


postgres3=# select *from people where weight <75 and gender ='Male';
 person_id | first_name |  last_name   | age | gender |        address         | phone_number  |            email             |         occupation          | nationality |                            education                            |  language  | is_married | has_children | height | weight
-----------+------------+--------------+-----+--------+------------------------+---------------+------------------------------+-----------------------------+-------------+-----------------------------------------------------------------+------------+------------+--------------+--------+--------
        10 | Eamon      | Cheeseman    |  58 | Male   | 03 Ridgeview Way       | (973) 3844019 | echeeseman6@statcounter.com  | Health Coach III            | Estonia     | Estonian Academy of Music and Theatre                           | Sotho      | t          | t            |    207 |     63
        14 | Rollie     | Arden        |  33 | Male   | 46 Express Parkway     | (384) 4353937 | rardena@e-recht24.de         | Software Test Engineer III  | Iran        | Isfahan University                                              | Hindi      | t          | f            |    108 |     52
        15 | Hymie      | Stringfellow |  18 | Male   | 623 Eggendart Crossing | (286) 9427568 | hstringfellowb@state.tx.us   | Research Assistant III      | Philippines | University of the East, Ramon Magsaysay Memorial Medical Center | Kyrgyz     | f          | f            |    190 |     62
        23 | Johannes   | Daughton     |  29 | Male   | 37 Acker Place         | (526) 8118211 | jdaughtonj@mac.com           | Electrical Engineer         | China       | Guizhou Normal University                                       | Bislama    | f          | t            |    218 |     73
        28 | Abner      | McClinton    |  60 | Male   | 8360 Emmet Center      | (169) 9535987 | amcclintono@seattletimes.com | Human Resources Assistant I | China       | Chongqing Normal University Foreign Trade and Business College  | Indonesian | t          | t            |    132 |     44
        29 | Clive      | Vearnals     |  46 | Male   | 56 Sheridan Plaza      | (523) 1555191 | cvearnalsp@accuweather.com   | Administrative Assistant II | Indonesia   | Universitas Tarumanagara                                        | Tok Pisin  | f          | t            |    126 |     54
        31 | Kit        | Lillgard     |  54 | Male   | 72061 Amoth Park       | (953) 6837652 | klillgardr@seesaa.net        | Registered Nurse            | Bulgaria    | Medical University Pleven                                       | Assamese   | f          | t            |    208 |     58
        35 | Leif       | Tingly       |  51 | Male   | 2407 Nevada Junction   | (596) 4347850 | ltinglyv@wikipedia.org       | Associate Professor         | Philippines | Misamis University                                              | Aymara     | t          | f            |    164 |     43
        36 | Cash       | Esilmon      |  69 | Male   | 531 Bobwhite Road      | (275) 1440835 | cesilmonw@google.it          | VP Product Management       | China       | South China Construction University                             | Dzongkha   | f          | f            |    125 |     55
(9 ёЄЁюъ)


postgres3=# select avg(age)from people;
         avg
---------------------
 47.8333333333333333
(1 ёЄЁюър)


postgres3=# select avg(age) as average age of all from people;
ОШИБКА:  ошибка синтаксиса (примерное положение: "age")
СТРОКА 1: select avg(age) as average age of all from people;
                                     ^
postgres3=# select avg(age) as'average age of all' from people;
ОШИБКА:  ошибка синтаксиса (примерное положение: "'average age of all'")
СТРОКА 1: select avg(age) as'average age of all' from people;
                            ^
postgres3=# select avg(age)from people;
         avg
---------------------
 47.8333333333333333
(1 ёЄЁюър)


postgres3=# select count (occupation)from people;
 count
-------
    42
(1 ёЄЁюър)


postgres3=# select count (occupation)from people and order by occupation;
ОШИБКА:  ошибка синтаксиса (примерное положение: "and")
СТРОКА 1: select count (occupation)from people and order by occupation...
                                               ^
postgres3=# select *from people order by occupation;
 person_id | first_name |  last_name   | age | gender |        address         | phone_number  |              email               |           occupation           |   nationality    |                            education                            |  language   | is_married | has_children | height | weight
-----------+------------+--------------+-----+--------+------------------------+---------------+----------------------------------+--------------------------------+------------------+-----------------------------------------------------------------+-------------+------------+--------------+--------+--------
        11 | Addi       | Dwelling     |  74 | Female | 47 Declaration Pass    | (278) 4368780 | adwelling7@eventbrite.com        | Accounting Assistant II        | China            | China University of Mining Technology - Beijing                 | Hiri Motu   | f          | t            |    122 |     96
        29 | Clive      | Vearnals     |  46 | Male   | 56 Sheridan Plaza      | (523) 1555191 | cvearnalsp@accuweather.com       | Administrative Assistant II    | Indonesia        | Universitas Tarumanagara                                        | Tok Pisin   | f          | t            |    126 |     54
        32 | Flint      | Brownjohn    |  59 | Male   | 1205 Huxley Hill       | (646) 5148628 | fbrownjohns@chron.com            | Administrative Officer         | China            | Shanghai Lida Polytechnic Institute                             | Tetum       | f          | t            |    184 |     96
         4 | Lauritz    | Whatsize     |  49 | Male   | Гражданская 119        | (949) 9383169 | gggjjj22@gmail.com               | Analytic Engineer              | Iran             | Yazd Medical University                                         | Kazakh      | f          | f            |    109 |    120
         6 | Loralyn    | Skelhorn     |  71 | Female | 45 Arizona Parkway     | (213) 8925684 | lskelhorn2@istockphoto.com       | Assistant Professor            | Indonesia        | Universitas 17 Agustus 1945 Banyuwangi                          | Catalan     | t          | t            |    155 |    117
        35 | Leif       | Tingly       |  51 | Male   | 2407 Nevada Junction   | (596) 4347850 | ltinglyv@wikipedia.org           | Associate Professor            | Philippines      | Misamis University                                              | Aymara      | t          | f            |    164 |     43
        19 | Darsey     | McGivena     |  51 | Female | 799 Sommers Alley      | (303) 7093269 | dmcgivenaf@salon.com             | Budget/Accounting Analyst I    | Philippines      | Wesleyan University Philippines                                 | Malayalam   | f          | f            |    152 |     93
         3 | Mike       | Meyers       |  27 | M      | baitik-baatyr str 48   | +996700285696 | mike@gmail.com                   | ceo of company                 | english          | master degree                                                   | english     | f          | f            |    1.8 |   80.2
        39 | Ermina     | Pharo        |  63 | Female | 9 Pawling Terrace      | (866) 1897071 | epharoz@hc360.com                | Chief Design Engineer          | Greece           | Aristotle University of Thessaloniki                            | Estonian    | f          | t            |    202 |     71
        25 | Cally      | Sowthcote    |  52 | Female | 0 Hintze Park          | (880) 6837178 | csowthcotel@yandex.ru            | Clinical Specialist            | Brazil           | Universidade do Rio Grande                                      | Lithuanian  | f          | t            |    152 |     41
        42 | Alwyn      | Kelwaybamber |  67 | Male   | 13673 Cody Alley       | (612) 9321633 | akelwaybamber12@github.io        | Cost Accountant                | Poland           | Silesian Academy of Medicine in Katowice                        | Amharic     | f          | f            |    152 |     82
        40 | Putnam     | McGonigle    |  72 | Male   | 38 Rowland Circle      | (782) 1907998 | pmcgonigle10@mashable.com        | Database Administrator I       | Argentina        | Universidad Argentina "John F. Kennedy"                         | Portuguese  | f          | t            |    102 |     99
        18 | Zacharia   | Gent         |  45 | Male   | 5 Talisman Park        | (231) 8792421 | zgente@posterous.com             | Dental Hygienist               | Indonesia        | Universitas Slamet Riyadi Surakarta                             | Belarusian  | t          | f            |    164 |     96
        30 | Wells      | Liles        |  47 | Male   | 72671 Claremont Place  | (455) 1261507 | wlilesq@artisteer.com            | Dental Hygienist               | Brazil           | Universidade Catolica de Salvador                               | Telugu      | t          | f            |    181 |     75
        12 | Wilow      | Giannassi    |  48 | Female | 354 Reindahl Hill      | (640) 7050043 | wgiannassi8@google.fr            | Desktop Support Technician     | Ireland          | Dublin Institute for Advanced Studies                           | Polish      | f          | f            |    147 |     85
        16 | Osmond     | Furness      |  44 | Male   | 903 Oriole Lane        | (869) 9383143 | ofurnessc@dedecms.com            | Developer II                   | China            | Inner Mongolia Normal University                                | Kannada     | t          | f            |    143 |    119
        23 | Johannes   | Daughton     |  29 | Male   | 37 Acker Place         | (526) 8118211 | jdaughtonj@mac.com               | Electrical Engineer            | China            | Guizhou Normal University                                       | Bislama     | f          | t            |    218 |     73
        26 | Zandra     | Lodder       |  32 | Female | 835 Buhler Trail       | (418) 5306885 | zlodderm@admin.ch                | Financial Advisor              | Belarus          | Minsk Institute of Management                                   | Swahili     | t          | f            |    142 |     84
         2 | Leo        | Messi        |  35 | M      | aitmatova str 57       | +996708456378 | leo@gmail.com                    | footballer                     | argentinian      | master degree                                                   | spanish     | t          | t            |   1.69 |     72
        27 | Redford    | Mussett      |  35 | Male   | 9382 Hayes Avenue      | (363) 2023845 | rmussettn@dion.ne.jp             | General Manager                | Saint Barthelemy | The College of The Bahamas                                      | Tok Pisin   | f          | f            |    179 |     79
        10 | Eamon      | Cheeseman    |  58 | Male   | 03 Ridgeview Way       | (973) 3844019 | echeeseman6@statcounter.com      | Health Coach III               | Estonia          | Estonian Academy of Music and Theatre                           | Sotho       | t          | t            |    207 |     63
        28 | Abner      | McClinton    |  60 | Male   | 8360 Emmet Center      | (169) 9535987 | amcclintono@seattletimes.com     | Human Resources Assistant I    | China            | Chongqing Normal University Foreign Trade and Business College  | Indonesian  | t          | t            |    132 |     44
        17 | Maybelle   | Dain         |  44 | Female | 71473 Tomscot Plaza    | (133) 9148333 | mdaind@g.co                      | Human Resources Manager        | China            | Huanghe Science & Technology University                         | Mongolian   | t          | t            |    111 |    105
        13 | Latisha    | Ivanishin    |  25 | Female | 2 Colorado Crossing    | (873) 3919592 | livanishin9@g.co                 | Nuclear Power Engineer         | Sweden           | Royal lnstitute of Technology                                   | Arabic      | f          | f            |    123 |    102
         8 | Edwin      | Simeonov     |  25 | Male   | 889 Rieder Terrace     | (227) 6305063 | esimeonov4@webmd.com             | Operator                       | China            | Jiangsu University of Science and Technology                    | Albanian    | t          | f            |    105 |     84
        20 | Arlyn      | Karlsen      |  64 | Female | 8 Aberg Trail          | (194) 8557201 | akarlseng@house.gov              | Payment Adjustment Coordinator | Japan            | Nippon Medical School                                           | Estonian    | t          | f            |    166 |    103
         9 | Ignace     | Curnnokk     |  60 | Male   | 0 Center Parkway       | (551) 5800839 | icurnnokk5@meetup.com            | Programmer II                  | Ukraine          | Ivano-Frankivsk National University of Oli and Gas              | Swahili     | f          | f            |    202 |    103
        37 | Isahella   | Antonazzi    |  44 | Female | 8248 Fulton Lane       | (898) 9762728 | iantonazzix@ft.com               | Project Manager                | Netherlands      | Utrecht University                                              | Amharic     | f          | f            |    106 |    110
        24 | Brooks     | Fiddyment    |  58 | Female | 36823 Rigney Alley     | (502) 1778971 | bfiddymentk@ibm.com              | Recruiting Manager             | United States    | Washington College                                              | Polish      | t          | t            |    170 |    105
        31 | Kit        | Lillgard     |  54 | Male   | 72061 Amoth Park       | (953) 6837652 | klillgardr@seesaa.net            | Registered Nurse               | Bulgaria         | Medical University Pleven                                       | Assamese    | f          | t            |    208 |     58
        34 | Layla      | deKnevet     |  54 | Female | 9 Green Ridge Circle   | (515) 6378757 | ldeknevetu@ted.com               | Registered Nurse               | Vietnam          | Tay Nguyen University                                           | Lao         | f          | f            |    191 |     89
        15 | Hymie      | Stringfellow |  18 | Male   | 623 Eggendart Crossing | (286) 9427568 | hstringfellowb@state.tx.us       | Research Assistant III         | Philippines      | University of the East, Ramon Magsaysay Memorial Medical Center | Kyrgyz      | f          | f            |    190 |     62
        41 | Karlyn     | Pankhurst.   |  36 | Female | 250 Springs Terrace    | (569) 9709310 | kpankhurst11@cargocollective.com | Safety Technician I            | Finland          | Central Ostrobothnia University of Applied Sciences             | Kazakh      | t          | f            |    168 |     82
        22 | Neddie     | Berkley      |  23 | Male   | 18 Thackeray Road      | (837) 5101009 | nberkleyi@qq.com                 | Software Test Engineer II      | Philippines      | Central Philippine University                                   | Dutch       | f          | t            |    205 |     99
        14 | Rollie     | Arden        |  33 | Male   | 46 Express Parkway     | (384) 4353937 | rardena@e-recht24.de             | Software Test Engineer III     | Iran             | Isfahan University                                              | Hindi       | t          | f            |    108 |     52
         5 | Etta       | Joules       |  15 | Female | 1 Little Fleur Circle  | (747) 6895499 | ejoules1@weather.com             | Structural Engineer            | Albania          | Polytechnic University of Tirane                                | Malay       | t          | t            |    106 |     59
        21 | Aileen     | Gaishson     |  66 | Female | 9100 Bayside Pass      | (915) 3753279 | agaishsonh@wikia.com             | VP Accounting                  | Israel           | Russell Berrie Nanotechnology Institute                         | Hungarian   | f          | f            |    114 |     52
        43 | Read       | Bottle       |  20 | Male   | 4131 Nevada Alley      | (294) 1763810 | rbottle13@usda.gov               | VP Marketing                   | Colombia         | Universidad Santiago de Cali                                    | Aymara      | t          | t            |    204 |    115
        36 | Cash       | Esilmon      |  69 | Male   | 531 Bobwhite Road      | (275) 1440835 | cesilmonw@google.it              | VP Product Management          | China            | South China Construction University                             | Dzongkha    | f          | f            |    125 |     55
         7 | Fawne      | Andrews      |  54 | Female | 365 Hansons Avenue     | (755) 9285401 | fandrews3@a8.net                 | VP Product Management          | France           | Ecole Polytechnique Marseille                                   | Montenegrin | f          | t            |    159 |     75
        33 | Jorie      | Jay          |  79 | Female | 70688 Stuart Hill      | (649) 7582538 | jjayt@skype.com                  | VP Product Management          | Azerbaijan       | Academy of Public Administration                                | Maori       | f          | t            |    182 |     42
        38 | Hedy       | Erickssen    |  53 | Female | 9953 Heffernan Plaza   | (574) 4619363 | hericksseny@live.com             | VP Quality Control             | Peru             | Universidad Senor de Sipan                                      | English     | t          | t            |    118 |     98
(42 ёЄЁюъш)


postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=# select from people first_name,occupation order by occupation;
ОШИБКА:  отношение "occupation" не существует
СТРОКА 1: select from people first_name,occupation order by occupation...
                                        ^
postgres3=#  select from people first_name,occupation where order by occupation;
ОШИБКА:  ошибка синтаксиса (примерное положение: "order")
СТРОКА 1: select from people first_name,occupation where order by occu...
                                                         ^
postgres3=#  select from people first_name,occupation order by where occupation;
ОШИБКА:  ошибка синтаксиса (примерное положение: "where")
СТРОКА 1: select from people first_name,occupation order by where occu...
                                                            ^
postgres3=# select count(occupation)from people order by occupation;
ОШИБКА:  столбец "people.occupation" должен фигурировать в предложении GROUP BY или использоваться в агрегатной функции
СТРОКА 1: select count(occupation)from people order by occupation;
                                                       ^
postgres3=# select count(occupation)from people group by occupation;
 count
-------
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     2
     1
     1
     1
     1
     1
     2
     1
     1
     1
     1
     1
     1
     1
     3
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
(38 ёЄЁюъ)


postgres3=# select *from people order by occupation;
 person_id | first_name |  last_name   | age | gender |        address         | phone_number  |              email               |           occupation           |   nationality    |                            education                            |  language   | is_married | has_children | height | weight
-----------+------------+--------------+-----+--------+------------------------+---------------+----------------------------------+--------------------------------+------------------+-----------------------------------------------------------------+-------------+------------+--------------+--------+--------
        11 | Addi       | Dwelling     |  74 | Female | 47 Declaration Pass    | (278) 4368780 | adwelling7@eventbrite.com        | Accounting Assistant II        | China            | China University of Mining Technology - Beijing                 | Hiri Motu   | f          | t            |    122 |     96
        29 | Clive      | Vearnals     |  46 | Male   | 56 Sheridan Plaza      | (523) 1555191 | cvearnalsp@accuweather.com       | Administrative Assistant II    | Indonesia        | Universitas Tarumanagara                                        | Tok Pisin   | f          | t            |    126 |     54
        32 | Flint      | Brownjohn    |  59 | Male   | 1205 Huxley Hill       | (646) 5148628 | fbrownjohns@chron.com            | Administrative Officer         | China            | Shanghai Lida Polytechnic Institute                             | Tetum       | f          | t            |    184 |     96
         4 | Lauritz    | Whatsize     |  49 | Male   | Гражданская 119        | (949) 9383169 | gggjjj22@gmail.com               | Analytic Engineer              | Iran             | Yazd Medical University                                         | Kazakh      | f          | f            |    109 |    120
         6 | Loralyn    | Skelhorn     |  71 | Female | 45 Arizona Parkway     | (213) 8925684 | lskelhorn2@istockphoto.com       | Assistant Professor            | Indonesia        | Universitas 17 Agustus 1945 Banyuwangi                          | Catalan     | t          | t            |    155 |    117
        35 | Leif       | Tingly       |  51 | Male   | 2407 Nevada Junction   | (596) 4347850 | ltinglyv@wikipedia.org           | Associate Professor            | Philippines      | Misamis University                                              | Aymara      | t          | f            |    164 |     43
        19 | Darsey     | McGivena     |  51 | Female | 799 Sommers Alley      | (303) 7093269 | dmcgivenaf@salon.com             | Budget/Accounting Analyst I    | Philippines      | Wesleyan University Philippines                                 | Malayalam   | f          | f            |    152 |     93
         3 | Mike       | Meyers       |  27 | M      | baitik-baatyr str 48   | +996700285696 | mike@gmail.com                   | ceo of company                 | english          | master degree                                                   | english     | f          | f            |    1.8 |   80.2
        39 | Ermina     | Pharo        |  63 | Female | 9 Pawling Terrace      | (866) 1897071 | epharoz@hc360.com                | Chief Design Engineer          | Greece           | Aristotle University of Thessaloniki                            | Estonian    | f          | t            |    202 |     71
        25 | Cally      | Sowthcote    |  52 | Female | 0 Hintze Park          | (880) 6837178 | csowthcotel@yandex.ru            | Clinical Specialist            | Brazil           | Universidade do Rio Grande                                      | Lithuanian  | f          | t            |    152 |     41
        42 | Alwyn      | Kelwaybamber |  67 | Male   | 13673 Cody Alley       | (612) 9321633 | akelwaybamber12@github.io        | Cost Accountant                | Poland           | Silesian Academy of Medicine in Katowice                        | Amharic     | f          | f            |    152 |     82
        40 | Putnam     | McGonigle    |  72 | Male   | 38 Rowland Circle      | (782) 1907998 | pmcgonigle10@mashable.com        | Database Administrator I       | Argentina        | Universidad Argentina "John F. Kennedy"                         | Portuguese  | f          | t            |    102 |     99
        18 | Zacharia   | Gent         |  45 | Male   | 5 Talisman Park        | (231) 8792421 | zgente@posterous.com             | Dental Hygienist               | Indonesia        | Universitas Slamet Riyadi Surakarta                             | Belarusian  | t          | f            |    164 |     96
        30 | Wells      | Liles        |  47 | Male   | 72671 Claremont Place  | (455) 1261507 | wlilesq@artisteer.com            | Dental Hygienist               | Brazil           | Universidade Catolica de Salvador                               | Telugu      | t          | f            |    181 |     75
        12 | Wilow      | Giannassi    |  48 | Female | 354 Reindahl Hill      | (640) 7050043 | wgiannassi8@google.fr            | Desktop Support Technician     | Ireland          | Dublin Institute for Advanced Studies                           | Polish      | f          | f            |    147 |     85
        16 | Osmond     | Furness      |  44 | Male   | 903 Oriole Lane        | (869) 9383143 | ofurnessc@dedecms.com            | Developer II                   | China            | Inner Mongolia Normal University                                | Kannada     | t          | f            |    143 |    119
        23 | Johannes   | Daughton     |  29 | Male   | 37 Acker Place         | (526) 8118211 | jdaughtonj@mac.com               | Electrical Engineer            | China            | Guizhou Normal University                                       | Bislama     | f          | t            |    218 |     73
        26 | Zandra     | Lodder       |  32 | Female | 835 Buhler Trail       | (418) 5306885 | zlodderm@admin.ch                | Financial Advisor              | Belarus          | Minsk Institute of Management                                   | Swahili     | t          | f            |    142 |     84
         2 | Leo        | Messi        |  35 | M      | aitmatova str 57       | +996708456378 | leo@gmail.com                    | footballer                     | argentinian      | master degree                                                   | spanish     | t          | t            |   1.69 |     72
        27 | Redford    | Mussett      |  35 | Male   | 9382 Hayes Avenue      | (363) 2023845 | rmussettn@dion.ne.jp             | General Manager                | Saint Barthelemy | The College of The Bahamas                                      | Tok Pisin   | f          | f            |    179 |     79
        10 | Eamon      | Cheeseman    |  58 | Male   | 03 Ridgeview Way       | (973) 3844019 | echeeseman6@statcounter.com      | Health Coach III               | Estonia          | Estonian Academy of Music and Theatre                           | Sotho       | t          | t            |    207 |     63
        28 | Abner      | McClinton    |  60 | Male   | 8360 Emmet Center      | (169) 9535987 | amcclintono@seattletimes.com     | Human Resources Assistant I    | China            | Chongqing Normal University Foreign Trade and Business College  | Indonesian  | t          | t            |    132 |     44
        17 | Maybelle   | Dain         |  44 | Female | 71473 Tomscot Plaza    | (133) 9148333 | mdaind@g.co                      | Human Resources Manager        | China            | Huanghe Science & Technology University                         | Mongolian   | t          | t            |    111 |    105
        13 | Latisha    | Ivanishin    |  25 | Female | 2 Colorado Crossing    | (873) 3919592 | livanishin9@g.co                 | Nuclear Power Engineer         | Sweden           | Royal lnstitute of Technology                                   | Arabic      | f          | f            |    123 |    102
         8 | Edwin      | Simeonov     |  25 | Male   | 889 Rieder Terrace     | (227) 6305063 | esimeonov4@webmd.com             | Operator                       | China            | Jiangsu University of Science and Technology                    | Albanian    | t          | f            |    105 |     84
        20 | Arlyn      | Karlsen      |  64 | Female | 8 Aberg Trail          | (194) 8557201 | akarlseng@house.gov              | Payment Adjustment Coordinator | Japan            | Nippon Medical School                                           | Estonian    | t          | f            |    166 |    103
         9 | Ignace     | Curnnokk     |  60 | Male   | 0 Center Parkway       | (551) 5800839 | icurnnokk5@meetup.com            | Programmer II                  | Ukraine          | Ivano-Frankivsk National University of Oli and Gas              | Swahili     | f          | f            |    202 |    103
        37 | Isahella   | Antonazzi    |  44 | Female | 8248 Fulton Lane       | (898) 9762728 | iantonazzix@ft.com               | Project Manager                | Netherlands      | Utrecht University                                              | Amharic     | f          | f            |    106 |    110
        24 | Brooks     | Fiddyment    |  58 | Female | 36823 Rigney Alley     | (502) 1778971 | bfiddymentk@ibm.com              | Recruiting Manager             | United States    | Washington College                                              | Polish      | t          | t            |    170 |    105
        31 | Kit        | Lillgard     |  54 | Male   | 72061 Amoth Park       | (953) 6837652 | klillgardr@seesaa.net            | Registered Nurse               | Bulgaria         | Medical University Pleven                                       | Assamese    | f          | t            |    208 |     58
        34 | Layla      | deKnevet     |  54 | Female | 9 Green Ridge Circle   | (515) 6378757 | ldeknevetu@ted.com               | Registered Nurse               | Vietnam          | Tay Nguyen University                                           | Lao         | f          | f            |    191 |     89
        15 | Hymie      | Stringfellow |  18 | Male   | 623 Eggendart Crossing | (286) 9427568 | hstringfellowb@state.tx.us       | Research Assistant III         | Philippines      | University of the East, Ramon Magsaysay Memorial Medical Center | Kyrgyz      | f          | f            |    190 |     62
        41 | Karlyn     | Pankhurst.   |  36 | Female | 250 Springs Terrace    | (569) 9709310 | kpankhurst11@cargocollective.com | Safety Technician I            | Finland          | Central Ostrobothnia University of Applied Sciences             | Kazakh      | t          | f            |    168 |     82
        22 | Neddie     | Berkley      |  23 | Male   | 18 Thackeray Road      | (837) 5101009 | nberkleyi@qq.com                 | Software Test Engineer II      | Philippines      | Central Philippine University                                   | Dutch       | f          | t            |    205 |     99
        14 | Rollie     | Arden        |  33 | Male   | 46 Express Parkway     | (384) 4353937 | rardena@e-recht24.de             | Software Test Engineer III     | Iran             | Isfahan University                                              | Hindi       | t          | f            |    108 |     52
         5 | Etta       | Joules       |  15 | Female | 1 Little Fleur Circle  | (747) 6895499 | ejoules1@weather.com             | Structural Engineer            | Albania          | Polytechnic University of Tirane                                | Malay       | t          | t            |    106 |     59
        21 | Aileen     | Gaishson     |  66 | Female | 9100 Bayside Pass      | (915) 3753279 | agaishsonh@wikia.com             | VP Accounting                  | Israel           | Russell Berrie Nanotechnology Institute                         | Hungarian   | f          | f            |    114 |     52
        43 | Read       | Bottle       |  20 | Male   | 4131 Nevada Alley      | (294) 1763810 | rbottle13@usda.gov               | VP Marketing                   | Colombia         | Universidad Santiago de Cali                                    | Aymara      | t          | t            |    204 |    115
        36 | Cash       | Esilmon      |  69 | Male   | 531 Bobwhite Road      | (275) 1440835 | cesilmonw@google.it              | VP Product Management          | China            | South China Construction University                             | Dzongkha    | f          | f            |    125 |     55
         7 | Fawne      | Andrews      |  54 | Female | 365 Hansons Avenue     | (755) 9285401 | fandrews3@a8.net                 | VP Product Management          | France           | Ecole Polytechnique Marseille                                   | Montenegrin | f          | t            |    159 |     75
        33 | Jorie      | Jay          |  79 | Female | 70688 Stuart Hill      | (649) 7582538 | jjayt@skype.com                  | VP Product Management          | Azerbaijan       | Academy of Public Administration                                | Maori       | f          | t            |    182 |     42
        38 | Hedy       | Erickssen    |  53 | Female | 9953 Heffernan Plaza   | (574) 4619363 | hericksseny@live.com             | VP Quality Control             | Peru             | Universidad Senor de Sipan                                      | English     | t          | t            |    118 |     98
(42 ёЄЁюъш)


postgres3=#
postgres3=#
postgres3=# select occupation,count(*)from people order by occupation;
ОШИБКА:  столбец "people.occupation" должен фигурировать в предложении GROUP BY или использоваться в агрегатной функции
СТРОКА 1: select occupation,count(*)from people order by occupation;
                 ^
postgres3=# select occupation,count(*)from people group by occupation;
           occupation           | count
--------------------------------+-------
 Chief Design Engineer          |     1
 Developer II                   |     1
 VP Quality Control             |     1
 Safety Technician I            |     1
 General Manager                |     1
 Recruiting Manager             |     1
 Financial Advisor              |     1
 Administrative Assistant II    |     1
 Clinical Specialist            |     1
 Desktop Support Technician     |     1
 Dental Hygienist               |     2
 Database Administrator I       |     1
 Human Resources Manager        |     1
 ceo of company                 |     1
 Accounting Assistant II        |     1
 Associate Professor            |     1
 Registered Nurse               |     2
 Operator                       |     1
 Human Resources Assistant I    |     1
 Health Coach III               |     1
 Payment Adjustment Coordinator |     1
 Electrical Engineer            |     1
 Budget/Accounting Analyst I    |     1
 Administrative Officer         |     1
 VP Product Management          |     3
 Programmer II                  |     1
 Research Assistant III         |     1
 footballer                     |     1
 VP Accounting                  |     1
 Assistant Professor            |     1
 Analytic Engineer              |     1
 Nuclear Power Engineer         |     1
 Project Manager                |     1
 Software Test Engineer II      |     1
 VP Marketing                   |     1
 Structural Engineer            |     1
 Software Test Engineer III     |     1
 Cost Accountant                |     1
(38 ёЄЁюъ)


postgres3=# select age,count(*)from people group by age limit 1;
 age | count
-----+-------
  74 |     1
(1 ёЄЁюър)


postgres3=# select *from people order by  age limit 1;
 person_id | first_name | last_name | age | gender |        address        | phone_number  |        email         |     occupation      | nationality |            education             | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+-----------------------+---------------+----------------------+---------------------+-------------+----------------------------------+----------+------------+--------------+--------+--------
         5 | Etta       | Joules    |  15 | Female | 1 Little Fleur Circle | (747) 6895499 | ejoules1@weather.com | Structural Engineer | Albania     | Polytechnic University of Tirane | Malay    | t          | t            |    106 |     59
(1 ёЄЁюър)


postgres3=# select *from people where age =(select age=min(age)from people);
ОШИБКА:  столбец "people.age" должен фигурировать в предложении GROUP BY или использоваться в агрегатной функции
СТРОКА 1: select *from people where age =(select age=min(age)from peop...
                                                 ^
postgres3=# select first_name
postgres3-# ,age from people where age =(select min(age)from people);
 first_name | age
------------+-----
 Etta       |  15
(1 ёЄЁюър)


postgres3=# select *from people where email ilike '%gmail.com';
 person_id | first_name | last_name | age | gender |       address        | phone_number  |       email        |    occupation     | nationality |        education        | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+----------------------+---------------+--------------------+-------------------+-------------+-------------------------+----------+------------+--------------+--------+--------
         2 | Leo        | Messi     |  35 | M      | aitmatova str 57     | +996708456378 | leo@gmail.com      | footballer        | argentinian | master degree           | spanish  | t          | t            |   1.69 |     72
         3 | Mike       | Meyers    |  27 | M      | baitik-baatyr str 48 | +996700285696 | mike@gmail.com     | ceo of company    | english     | master degree           | english  | f          | f            |    1.8 |   80.2
         4 | Lauritz    | Whatsize  |  49 | Male   | Гражданская 119      | (949) 9383169 | gggjjj22@gmail.com | Analytic Engineer | Iran        | Yazd Medical University | Kazakh   | f          | f            |    109 |    120
(3 ёЄЁюъш)


postgres3=# select *from people order by height;
 person_id | first_name |  last_name   | age | gender |        address         | phone_number  |              email               |           occupation           |   nationality    |                            education                            |  language   | is_married | has_children | height | weight
-----------+------------+--------------+-----+--------+------------------------+---------------+----------------------------------+--------------------------------+------------------+-----------------------------------------------------------------+-------------+------------+--------------+--------+--------
         2 | Leo        | Messi        |  35 | M      | aitmatova str 57       | +996708456378 | leo@gmail.com                    | footballer                     | argentinian      | master degree                                                   | spanish     | t          | t            |   1.69 |     72
         3 | Mike       | Meyers       |  27 | M      | baitik-baatyr str 48   | +996700285696 | mike@gmail.com                   | ceo of company                 | english          | master degree                                                   | english     | f          | f            |    1.8 |   80.2
        40 | Putnam     | McGonigle    |  72 | Male   | 38 Rowland Circle      | (782) 1907998 | pmcgonigle10@mashable.com        | Database Administrator I       | Argentina        | Universidad Argentina "John F. Kennedy"                         | Portuguese  | f          | t            |    102 |     99
         8 | Edwin      | Simeonov     |  25 | Male   | 889 Rieder Terrace     | (227) 6305063 | esimeonov4@webmd.com             | Operator                       | China            | Jiangsu University of Science and Technology                    | Albanian    | t          | f            |    105 |     84
        37 | Isahella   | Antonazzi    |  44 | Female | 8248 Fulton Lane       | (898) 9762728 | iantonazzix@ft.com               | Project Manager                | Netherlands      | Utrecht University                                              | Amharic     | f          | f            |    106 |    110
         5 | Etta       | Joules       |  15 | Female | 1 Little Fleur Circle  | (747) 6895499 | ejoules1@weather.com             | Structural Engineer            | Albania          | Polytechnic University of Tirane                                | Malay       | t          | t            |    106 |     59
        14 | Rollie     | Arden        |  33 | Male   | 46 Express Parkway     | (384) 4353937 | rardena@e-recht24.de             | Software Test Engineer III     | Iran             | Isfahan University                                              | Hindi       | t          | f            |    108 |     52
         4 | Lauritz    | Whatsize     |  49 | Male   | Гражданская 119        | (949) 9383169 | gggjjj22@gmail.com               | Analytic Engineer              | Iran             | Yazd Medical University                                         | Kazakh      | f          | f            |    109 |    120
        17 | Maybelle   | Dain         |  44 | Female | 71473 Tomscot Plaza    | (133) 9148333 | mdaind@g.co                      | Human Resources Manager        | China            | Huanghe Science & Technology University                         | Mongolian   | t          | t            |    111 |    105
        21 | Aileen     | Gaishson     |  66 | Female | 9100 Bayside Pass      | (915) 3753279 | agaishsonh@wikia.com             | VP Accounting                  | Israel           | Russell Berrie Nanotechnology Institute                         | Hungarian   | f          | f            |    114 |     52
        38 | Hedy       | Erickssen    |  53 | Female | 9953 Heffernan Plaza   | (574) 4619363 | hericksseny@live.com             | VP Quality Control             | Peru             | Universidad Senor de Sipan                                      | English     | t          | t            |    118 |     98
        11 | Addi       | Dwelling     |  74 | Female | 47 Declaration Pass    | (278) 4368780 | adwelling7@eventbrite.com        | Accounting Assistant II        | China            | China University of Mining Technology - Beijing                 | Hiri Motu   | f          | t            |    122 |     96
        13 | Latisha    | Ivanishin    |  25 | Female | 2 Colorado Crossing    | (873) 3919592 | livanishin9@g.co                 | Nuclear Power Engineer         | Sweden           | Royal lnstitute of Technology                                   | Arabic      | f          | f            |    123 |    102
        36 | Cash       | Esilmon      |  69 | Male   | 531 Bobwhite Road      | (275) 1440835 | cesilmonw@google.it              | VP Product Management          | China            | South China Construction University                             | Dzongkha    | f          | f            |    125 |     55
        29 | Clive      | Vearnals     |  46 | Male   | 56 Sheridan Plaza      | (523) 1555191 | cvearnalsp@accuweather.com       | Administrative Assistant II    | Indonesia        | Universitas Tarumanagara                                        | Tok Pisin   | f          | t            |    126 |     54
        28 | Abner      | McClinton    |  60 | Male   | 8360 Emmet Center      | (169) 9535987 | amcclintono@seattletimes.com     | Human Resources Assistant I    | China            | Chongqing Normal University Foreign Trade and Business College  | Indonesian  | t          | t            |    132 |     44
        26 | Zandra     | Lodder       |  32 | Female | 835 Buhler Trail       | (418) 5306885 | zlodderm@admin.ch                | Financial Advisor              | Belarus          | Minsk Institute of Management                                   | Swahili     | t          | f            |    142 |     84
        16 | Osmond     | Furness      |  44 | Male   | 903 Oriole Lane        | (869) 9383143 | ofurnessc@dedecms.com            | Developer II                   | China            | Inner Mongolia Normal University                                | Kannada     | t          | f            |    143 |    119
        12 | Wilow      | Giannassi    |  48 | Female | 354 Reindahl Hill      | (640) 7050043 | wgiannassi8@google.fr            | Desktop Support Technician     | Ireland          | Dublin Institute for Advanced Studies                           | Polish      | f          | f            |    147 |     85
        19 | Darsey     | McGivena     |  51 | Female | 799 Sommers Alley      | (303) 7093269 | dmcgivenaf@salon.com             | Budget/Accounting Analyst I    | Philippines      | Wesleyan University Philippines                                 | Malayalam   | f          | f            |    152 |     93
        25 | Cally      | Sowthcote    |  52 | Female | 0 Hintze Park          | (880) 6837178 | csowthcotel@yandex.ru            | Clinical Specialist            | Brazil           | Universidade do Rio Grande                                      | Lithuanian  | f          | t            |    152 |     41
        42 | Alwyn      | Kelwaybamber |  67 | Male   | 13673 Cody Alley       | (612) 9321633 | akelwaybamber12@github.io        | Cost Accountant                | Poland           | Silesian Academy of Medicine in Katowice                        | Amharic     | f          | f            |    152 |     82
         6 | Loralyn    | Skelhorn     |  71 | Female | 45 Arizona Parkway     | (213) 8925684 | lskelhorn2@istockphoto.com       | Assistant Professor            | Indonesia        | Universitas 17 Agustus 1945 Banyuwangi                          | Catalan     | t          | t            |    155 |    117
         7 | Fawne      | Andrews      |  54 | Female | 365 Hansons Avenue     | (755) 9285401 | fandrews3@a8.net                 | VP Product Management          | France           | Ecole Polytechnique Marseille                                   | Montenegrin | f          | t            |    159 |     75
        35 | Leif       | Tingly       |  51 | Male   | 2407 Nevada Junction   | (596) 4347850 | ltinglyv@wikipedia.org           | Associate Professor            | Philippines      | Misamis University                                              | Aymara      | t          | f            |    164 |     43
        18 | Zacharia   | Gent         |  45 | Male   | 5 Talisman Park        | (231) 8792421 | zgente@posterous.com             | Dental Hygienist               | Indonesia        | Universitas Slamet Riyadi Surakarta                             | Belarusian  | t          | f            |    164 |     96
        20 | Arlyn      | Karlsen      |  64 | Female | 8 Aberg Trail          | (194) 8557201 | akarlseng@house.gov              | Payment Adjustment Coordinator | Japan            | Nippon Medical School                                           | Estonian    | t          | f            |    166 |    103
        41 | Karlyn     | Pankhurst.   |  36 | Female | 250 Springs Terrace    | (569) 9709310 | kpankhurst11@cargocollective.com | Safety Technician I            | Finland          | Central Ostrobothnia University of Applied Sciences             | Kazakh      | t          | f            |    168 |     82
        24 | Brooks     | Fiddyment    |  58 | Female | 36823 Rigney Alley     | (502) 1778971 | bfiddymentk@ibm.com              | Recruiting Manager             | United States    | Washington College                                              | Polish      | t          | t            |    170 |    105
        27 | Redford    | Mussett      |  35 | Male   | 9382 Hayes Avenue      | (363) 2023845 | rmussettn@dion.ne.jp             | General Manager                | Saint Barthelemy | The College of The Bahamas                                      | Tok Pisin   | f          | f            |    179 |     79
        30 | Wells      | Liles        |  47 | Male   | 72671 Claremont Place  | (455) 1261507 | wlilesq@artisteer.com            | Dental Hygienist               | Brazil           | Universidade Catolica de Salvador                               | Telugu      | t          | f            |    181 |     75
        33 | Jorie      | Jay          |  79 | Female | 70688 Stuart Hill      | (649) 7582538 | jjayt@skype.com                  | VP Product Management          | Azerbaijan       | Academy of Public Administration                                | Maori       | f          | t            |    182 |     42
        32 | Flint      | Brownjohn    |  59 | Male   | 1205 Huxley Hill       | (646) 5148628 | fbrownjohns@chron.com            | Administrative Officer         | China            | Shanghai Lida Polytechnic Institute                             | Tetum       | f          | t            |    184 |     96
        15 | Hymie      | Stringfellow |  18 | Male   | 623 Eggendart Crossing | (286) 9427568 | hstringfellowb@state.tx.us       | Research Assistant III         | Philippines      | University of the East, Ramon Magsaysay Memorial Medical Center | Kyrgyz      | f          | f            |    190 |     62
        34 | Layla      | deKnevet     |  54 | Female | 9 Green Ridge Circle   | (515) 6378757 | ldeknevetu@ted.com               | Registered Nurse               | Vietnam          | Tay Nguyen University                                           | Lao         | f          | f            |    191 |     89
         9 | Ignace     | Curnnokk     |  60 | Male   | 0 Center Parkway       | (551) 5800839 | icurnnokk5@meetup.com            | Programmer II                  | Ukraine          | Ivano-Frankivsk National University of Oli and Gas              | Swahili     | f          | f            |    202 |    103
        39 | Ermina     | Pharo        |  63 | Female | 9 Pawling Terrace      | (866) 1897071 | epharoz@hc360.com                | Chief Design Engineer          | Greece           | Aristotle University of Thessaloniki                            | Estonian    | f          | t            |    202 |     71
        43 | Read       | Bottle       |  20 | Male   | 4131 Nevada Alley      | (294) 1763810 | rbottle13@usda.gov               | VP Marketing                   | Colombia         | Universidad Santiago de Cali                                    | Aymara      | t          | t            |    204 |    115
        22 | Neddie     | Berkley      |  23 | Male   | 18 Thackeray Road      | (837) 5101009 | nberkleyi@qq.com                 | Software Test Engineer II      | Philippines      | Central Philippine University                                   | Dutch       | f          | t            |    205 |     99
        10 | Eamon      | Cheeseman    |  58 | Male   | 03 Ridgeview Way       | (973) 3844019 | echeeseman6@statcounter.com      | Health Coach III               | Estonia          | Estonian Academy of Music and Theatre                           | Sotho       | t          | t            |    207 |     63
        31 | Kit        | Lillgard     |  54 | Male   | 72061 Amoth Park       | (953) 6837652 | klillgardr@seesaa.net            | Registered Nurse               | Bulgaria         | Medical University Pleven                                       | Assamese    | f          | t            |    208 |     58
        23 | Johannes   | Daughton     |  29 | Male   | 37 Acker Place         | (526) 8118211 | jdaughtonj@mac.com               | Electrical Engineer            | China            | Guizhou Normal University                                       | Bislama     | f          | t            |    218 |     73
(42 ёЄЁюъш)


postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=# select height,count(*)from people group by height;
 height | count
--------+-------
    207 |     1
    155 |     1
    109 |     1
    184 |     1
    164 |     2
   1.69 |     1
    111 |     1
    1.8 |     1
    208 |     1
    190 |     1
    202 |     2
    181 |     1
    125 |     1
    218 |     1
    105 |     1
    114 |     1
    179 |     1
    142 |     1
    170 |     1
    143 |     1
    122 |     1
    147 |     1
    191 |     1
    166 |     1
    152 |     3
    118 |     1
    126 |     1
    204 |     1
    106 |     2
    102 |     1
    159 |     1
    168 |     1
    132 |     1
    108 |     1
    205 |     1
    182 |     1
    123 |     1
(37 ёЄЁюъ)


postgres3=# select*from people order by height;
 person_id | first_name |  last_name   | age | gender |        address         | phone_number  |              email               |           occupation           |   nationality    |                            education                            |  language   | is_married | has_children | height | weight
-----------+------------+--------------+-----+--------+------------------------+---------------+----------------------------------+--------------------------------+------------------+-----------------------------------------------------------------+-------------+------------+--------------+--------+--------
         2 | Leo        | Messi        |  35 | M      | aitmatova str 57       | +996708456378 | leo@gmail.com                    | footballer                     | argentinian      | master degree                                                   | spanish     | t          | t            |   1.69 |     72
         3 | Mike       | Meyers       |  27 | M      | baitik-baatyr str 48   | +996700285696 | mike@gmail.com                   | ceo of company                 | english          | master degree                                                   | english     | f          | f            |    1.8 |   80.2
        40 | Putnam     | McGonigle    |  72 | Male   | 38 Rowland Circle      | (782) 1907998 | pmcgonigle10@mashable.com        | Database Administrator I       | Argentina        | Universidad Argentina "John F. Kennedy"                         | Portuguese  | f          | t            |    102 |     99
         8 | Edwin      | Simeonov     |  25 | Male   | 889 Rieder Terrace     | (227) 6305063 | esimeonov4@webmd.com             | Operator                       | China            | Jiangsu University of Science and Technology                    | Albanian    | t          | f            |    105 |     84
        37 | Isahella   | Antonazzi    |  44 | Female | 8248 Fulton Lane       | (898) 9762728 | iantonazzix@ft.com               | Project Manager                | Netherlands      | Utrecht University                                              | Amharic     | f          | f            |    106 |    110
         5 | Etta       | Joules       |  15 | Female | 1 Little Fleur Circle  | (747) 6895499 | ejoules1@weather.com             | Structural Engineer            | Albania          | Polytechnic University of Tirane                                | Malay       | t          | t            |    106 |     59
        14 | Rollie     | Arden        |  33 | Male   | 46 Express Parkway     | (384) 4353937 | rardena@e-recht24.de             | Software Test Engineer III     | Iran             | Isfahan University                                              | Hindi       | t          | f            |    108 |     52
         4 | Lauritz    | Whatsize     |  49 | Male   | Гражданская 119        | (949) 9383169 | gggjjj22@gmail.com               | Analytic Engineer              | Iran             | Yazd Medical University                                         | Kazakh      | f          | f            |    109 |    120
        17 | Maybelle   | Dain         |  44 | Female | 71473 Tomscot Plaza    | (133) 9148333 | mdaind@g.co                      | Human Resources Manager        | China            | Huanghe Science & Technology University                         | Mongolian   | t          | t            |    111 |    105
        21 | Aileen     | Gaishson     |  66 | Female | 9100 Bayside Pass      | (915) 3753279 | agaishsonh@wikia.com             | VP Accounting                  | Israel           | Russell Berrie Nanotechnology Institute                         | Hungarian   | f          | f            |    114 |     52
        38 | Hedy       | Erickssen    |  53 | Female | 9953 Heffernan Plaza   | (574) 4619363 | hericksseny@live.com             | VP Quality Control             | Peru             | Universidad Senor de Sipan                                      | English     | t          | t            |    118 |     98
        11 | Addi       | Dwelling     |  74 | Female | 47 Declaration Pass    | (278) 4368780 | adwelling7@eventbrite.com        | Accounting Assistant II        | China            | China University of Mining Technology - Beijing                 | Hiri Motu   | f          | t            |    122 |     96
        13 | Latisha    | Ivanishin    |  25 | Female | 2 Colorado Crossing    | (873) 3919592 | livanishin9@g.co                 | Nuclear Power Engineer         | Sweden           | Royal lnstitute of Technology                                   | Arabic      | f          | f            |    123 |    102
        36 | Cash       | Esilmon      |  69 | Male   | 531 Bobwhite Road      | (275) 1440835 | cesilmonw@google.it              | VP Product Management          | China            | South China Construction University                             | Dzongkha    | f          | f            |    125 |     55
        29 | Clive      | Vearnals     |  46 | Male   | 56 Sheridan Plaza      | (523) 1555191 | cvearnalsp@accuweather.com       | Administrative Assistant II    | Indonesia        | Universitas Tarumanagara                                        | Tok Pisin   | f          | t            |    126 |     54
        28 | Abner      | McClinton    |  60 | Male   | 8360 Emmet Center      | (169) 9535987 | amcclintono@seattletimes.com     | Human Resources Assistant I    | China            | Chongqing Normal University Foreign Trade and Business College  | Indonesian  | t          | t            |    132 |     44
        26 | Zandra     | Lodder       |  32 | Female | 835 Buhler Trail       | (418) 5306885 | zlodderm@admin.ch                | Financial Advisor              | Belarus          | Minsk Institute of Management                                   | Swahili     | t          | f            |    142 |     84
        16 | Osmond     | Furness      |  44 | Male   | 903 Oriole Lane        | (869) 9383143 | ofurnessc@dedecms.com            | Developer II                   | China            | Inner Mongolia Normal University                                | Kannada     | t          | f            |    143 |    119
        12 | Wilow      | Giannassi    |  48 | Female | 354 Reindahl Hill      | (640) 7050043 | wgiannassi8@google.fr            | Desktop Support Technician     | Ireland          | Dublin Institute for Advanced Studies                           | Polish      | f          | f            |    147 |     85
        19 | Darsey     | McGivena     |  51 | Female | 799 Sommers Alley      | (303) 7093269 | dmcgivenaf@salon.com             | Budget/Accounting Analyst I    | Philippines      | Wesleyan University Philippines                                 | Malayalam   | f          | f            |    152 |     93
        25 | Cally      | Sowthcote    |  52 | Female | 0 Hintze Park          | (880) 6837178 | csowthcotel@yandex.ru            | Clinical Specialist            | Brazil           | Universidade do Rio Grande                                      | Lithuanian  | f          | t            |    152 |     41
        42 | Alwyn      | Kelwaybamber |  67 | Male   | 13673 Cody Alley       | (612) 9321633 | akelwaybamber12@github.io        | Cost Accountant                | Poland           | Silesian Academy of Medicine in Katowice                        | Amharic     | f          | f            |    152 |     82
         6 | Loralyn    | Skelhorn     |  71 | Female | 45 Arizona Parkway     | (213) 8925684 | lskelhorn2@istockphoto.com       | Assistant Professor            | Indonesia        | Universitas 17 Agustus 1945 Banyuwangi                          | Catalan     | t          | t            |    155 |    117
         7 | Fawne      | Andrews      |  54 | Female | 365 Hansons Avenue     | (755) 9285401 | fandrews3@a8.net                 | VP Product Management          | France           | Ecole Polytechnique Marseille                                   | Montenegrin | f          | t            |    159 |     75
        35 | Leif       | Tingly       |  51 | Male   | 2407 Nevada Junction   | (596) 4347850 | ltinglyv@wikipedia.org           | Associate Professor            | Philippines      | Misamis University                                              | Aymara      | t          | f            |    164 |     43
        18 | Zacharia   | Gent         |  45 | Male   | 5 Talisman Park        | (231) 8792421 | zgente@posterous.com             | Dental Hygienist               | Indonesia        | Universitas Slamet Riyadi Surakarta                             | Belarusian  | t          | f            |    164 |     96
        20 | Arlyn      | Karlsen      |  64 | Female | 8 Aberg Trail          | (194) 8557201 | akarlseng@house.gov              | Payment Adjustment Coordinator | Japan            | Nippon Medical School                                           | Estonian    | t          | f            |    166 |    103
        41 | Karlyn     | Pankhurst.   |  36 | Female | 250 Springs Terrace    | (569) 9709310 | kpankhurst11@cargocollective.com | Safety Technician I            | Finland          | Central Ostrobothnia University of Applied Sciences             | Kazakh      | t          | f            |    168 |     82
        24 | Brooks     | Fiddyment    |  58 | Female | 36823 Rigney Alley     | (502) 1778971 | bfiddymentk@ibm.com              | Recruiting Manager             | United States    | Washington College                                              | Polish      | t          | t            |    170 |    105
        27 | Redford    | Mussett      |  35 | Male   | 9382 Hayes Avenue      | (363) 2023845 | rmussettn@dion.ne.jp             | General Manager                | Saint Barthelemy | The College of The Bahamas                                      | Tok Pisin   | f          | f            |    179 |     79
        30 | Wells      | Liles        |  47 | Male   | 72671 Claremont Place  | (455) 1261507 | wlilesq@artisteer.com            | Dental Hygienist               | Brazil           | Universidade Catolica de Salvador                               | Telugu      | t          | f            |    181 |     75
        33 | Jorie      | Jay          |  79 | Female | 70688 Stuart Hill      | (649) 7582538 | jjayt@skype.com                  | VP Product Management          | Azerbaijan       | Academy of Public Administration                                | Maori       | f          | t            |    182 |     42
        32 | Flint      | Brownjohn    |  59 | Male   | 1205 Huxley Hill       | (646) 5148628 | fbrownjohns@chron.com            | Administrative Officer         | China            | Shanghai Lida Polytechnic Institute                             | Tetum       | f          | t            |    184 |     96
        15 | Hymie      | Stringfellow |  18 | Male   | 623 Eggendart Crossing | (286) 9427568 | hstringfellowb@state.tx.us       | Research Assistant III         | Philippines      | University of the East, Ramon Magsaysay Memorial Medical Center | Kyrgyz      | f          | f            |    190 |     62
        34 | Layla      | deKnevet     |  54 | Female | 9 Green Ridge Circle   | (515) 6378757 | ldeknevetu@ted.com               | Registered Nurse               | Vietnam          | Tay Nguyen University                                           | Lao         | f          | f            |    191 |     89
         9 | Ignace     | Curnnokk     |  60 | Male   | 0 Center Parkway       | (551) 5800839 | icurnnokk5@meetup.com            | Programmer II                  | Ukraine          | Ivano-Frankivsk National University of Oli and Gas              | Swahili     | f          | f            |    202 |    103
        39 | Ermina     | Pharo        |  63 | Female | 9 Pawling Terrace      | (866) 1897071 | epharoz@hc360.com                | Chief Design Engineer          | Greece           | Aristotle University of Thessaloniki                            | Estonian    | f          | t            |    202 |     71
        43 | Read       | Bottle       |  20 | Male   | 4131 Nevada Alley      | (294) 1763810 | rbottle13@usda.gov               | VP Marketing                   | Colombia         | Universidad Santiago de Cali                                    | Aymara      | t          | t            |    204 |    115
        22 | Neddie     | Berkley      |  23 | Male   | 18 Thackeray Road      | (837) 5101009 | nberkleyi@qq.com                 | Software Test Engineer II      | Philippines      | Central Philippine University                                   | Dutch       | f          | t            |    205 |     99
        10 | Eamon      | Cheeseman    |  58 | Male   | 03 Ridgeview Way       | (973) 3844019 | echeeseman6@statcounter.com      | Health Coach III               | Estonia          | Estonian Academy of Music and Theatre                           | Sotho       | t          | t            |    207 |     63
        31 | Kit        | Lillgard     |  54 | Male   | 72061 Amoth Park       | (953) 6837652 | klillgardr@seesaa.net            | Registered Nurse               | Bulgaria         | Medical University Pleven                                       | Assamese    | f          | t            |    208 |     58
        23 | Johannes   | Daughton     |  29 | Male   | 37 Acker Place         | (526) 8118211 | jdaughtonj@mac.com               | Electrical Engineer            | China            | Guizhou Normal University                                       | Bislama     | f          | t            |    218 |     73
(42 ёЄЁюъш)


postgres3=#
postgres3=# select first_name,height from people order by height;
 first_name | height
------------+--------
 Leo        |   1.69
 Mike       |    1.8
 Putnam     |    102
 Edwin      |    105
 Isahella   |    106
 Etta       |    106
 Rollie     |    108
 Lauritz    |    109
 Maybelle   |    111
 Aileen     |    114
 Hedy       |    118
 Addi       |    122
 Latisha    |    123
 Cash       |    125
 Clive      |    126
 Abner      |    132
 Zandra     |    142
 Osmond     |    143
 Wilow      |    147
 Darsey     |    152
 Cally      |    152
 Alwyn      |    152
 Loralyn    |    155
 Fawne      |    159
 Leif       |    164
 Zacharia   |    164
 Arlyn      |    166
 Karlyn     |    168
 Brooks     |    170
 Redford    |    179
 Wells      |    181
 Jorie      |    182
 Flint      |    184
 Hymie      |    190
 Layla      |    191
 Ignace     |    202
 Ermina     |    202
 Read       |    204
 Neddie     |    205
 Eamon      |    207
 Kit        |    208
 Johannes   |    218
(42 ёЄЁюъш)


postgres3=# select *from people where nationality = 'Germany';
 person_id | first_name | last_name | age | gender | address | phone_number | email | occupation | nationality | education | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+---------+--------------+-------+------------+-------------+-----------+----------+------------+--------------+--------+--------
(0 ёЄЁюъ)


postgres3=# select *from people where email = '%.com' and phone_number ='555%';
 person_id | first_name | last_name | age | gender | address | phone_number | email | occupation | nationality | education | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+---------+--------------+-------+------------+-------------+-----------+----------+------------+--------------+--------+--------
(0 ёЄЁюъ)


postgres3=# select *from people where email ilike '%.com' and phone_number ilike'555%';
 person_id | first_name | last_name | age | gender | address | phone_number | email | occupation | nationality | education | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+---------+--------------+-------+------------+-------------+-----------+----------+------------+--------------+--------+--------
(0 ёЄЁюъ)


postgres3=# select *from people where email ilike '%.com';
 person_id | first_name | last_name  | age | gender |        address        | phone_number  |              email               |         occupation          |  nationality  |                           education                            |  language  | is_married | has_children | height | weight
-----------+------------+------------+-----+--------+-----------------------+---------------+----------------------------------+-----------------------------+---------------+----------------------------------------------------------------+------------+------------+--------------+--------+--------
         2 | Leo        | Messi      |  35 | M      | aitmatova str 57      | +996708456378 | leo@gmail.com                    | footballer                  | argentinian   | master degree                                                  | spanish    | t          | t            |   1.69 |     72
         3 | Mike       | Meyers     |  27 | M      | baitik-baatyr str 48  | +996700285696 | mike@gmail.com                   | ceo of company              | english       | master degree                                                  | english    | f          | f            |    1.8 |   80.2
         5 | Etta       | Joules     |  15 | Female | 1 Little Fleur Circle | (747) 6895499 | ejoules1@weather.com             | Structural Engineer         | Albania       | Polytechnic University of Tirane                               | Malay      | t          | t            |    106 |     59
         6 | Loralyn    | Skelhorn   |  71 | Female | 45 Arizona Parkway    | (213) 8925684 | lskelhorn2@istockphoto.com       | Assistant Professor         | Indonesia     | Universitas 17 Agustus 1945 Banyuwangi                         | Catalan    | t          | t            |    155 |    117
         8 | Edwin      | Simeonov   |  25 | Male   | 889 Rieder Terrace    | (227) 6305063 | esimeonov4@webmd.com             | Operator                    | China         | Jiangsu University of Science and Technology                   | Albanian   | t          | f            |    105 |     84
         9 | Ignace     | Curnnokk   |  60 | Male   | 0 Center Parkway      | (551) 5800839 | icurnnokk5@meetup.com            | Programmer II               | Ukraine       | Ivano-Frankivsk National University of Oli and Gas             | Swahili    | f          | f            |    202 |    103
        10 | Eamon      | Cheeseman  |  58 | Male   | 03 Ridgeview Way      | (973) 3844019 | echeeseman6@statcounter.com      | Health Coach III            | Estonia       | Estonian Academy of Music and Theatre                          | Sotho      | t          | t            |    207 |     63
        11 | Addi       | Dwelling   |  74 | Female | 47 Declaration Pass   | (278) 4368780 | adwelling7@eventbrite.com        | Accounting Assistant II     | China         | China University of Mining Technology - Beijing                | Hiri Motu  | f          | t            |    122 |     96
        16 | Osmond     | Furness    |  44 | Male   | 903 Oriole Lane       | (869) 9383143 | ofurnessc@dedecms.com            | Developer II                | China         | Inner Mongolia Normal University                               | Kannada    | t          | f            |    143 |    119
        18 | Zacharia   | Gent       |  45 | Male   | 5 Talisman Park       | (231) 8792421 | zgente@posterous.com             | Dental Hygienist            | Indonesia     | Universitas Slamet Riyadi Surakarta                            | Belarusian | t          | f            |    164 |     96
        19 | Darsey     | McGivena   |  51 | Female | 799 Sommers Alley     | (303) 7093269 | dmcgivenaf@salon.com             | Budget/Accounting Analyst I | Philippines   | Wesleyan University Philippines                                | Malayalam  | f          | f            |    152 |     93
        21 | Aileen     | Gaishson   |  66 | Female | 9100 Bayside Pass     | (915) 3753279 | agaishsonh@wikia.com             | VP Accounting               | Israel        | Russell Berrie Nanotechnology Institute                        | Hungarian  | f          | f            |    114 |     52
        22 | Neddie     | Berkley    |  23 | Male   | 18 Thackeray Road     | (837) 5101009 | nberkleyi@qq.com                 | Software Test Engineer II   | Philippines   | Central Philippine University                                  | Dutch      | f          | t            |    205 |     99
        23 | Johannes   | Daughton   |  29 | Male   | 37 Acker Place        | (526) 8118211 | jdaughtonj@mac.com               | Electrical Engineer         | China         | Guizhou Normal University                                      | Bislama    | f          | t            |    218 |     73
        24 | Brooks     | Fiddyment  |  58 | Female | 36823 Rigney Alley    | (502) 1778971 | bfiddymentk@ibm.com              | Recruiting Manager          | United States | Washington College                                             | Polish     | t          | t            |    170 |    105
        28 | Abner      | McClinton  |  60 | Male   | 8360 Emmet Center     | (169) 9535987 | amcclintono@seattletimes.com     | Human Resources Assistant I | China         | Chongqing Normal University Foreign Trade and Business College | Indonesian | t          | t            |    132 |     44
        29 | Clive      | Vearnals   |  46 | Male   | 56 Sheridan Plaza     | (523) 1555191 | cvearnalsp@accuweather.com       | Administrative Assistant II | Indonesia     | Universitas Tarumanagara                                       | Tok Pisin  | f          | t            |    126 |     54
        30 | Wells      | Liles      |  47 | Male   | 72671 Claremont Place | (455) 1261507 | wlilesq@artisteer.com            | Dental Hygienist            | Brazil        | Universidade Catolica de Salvador                              | Telugu     | t          | f            |    181 |     75
        32 | Flint      | Brownjohn  |  59 | Male   | 1205 Huxley Hill      | (646) 5148628 | fbrownjohns@chron.com            | Administrative Officer      | China         | Shanghai Lida Polytechnic Institute                            | Tetum      | f          | t            |    184 |     96
        33 | Jorie      | Jay        |  79 | Female | 70688 Stuart Hill     | (649) 7582538 | jjayt@skype.com                  | VP Product Management       | Azerbaijan    | Academy of Public Administration                               | Maori      | f          | t            |    182 |     42
        34 | Layla      | deKnevet   |  54 | Female | 9 Green Ridge Circle  | (515) 6378757 | ldeknevetu@ted.com               | Registered Nurse            | Vietnam       | Tay Nguyen University                                          | Lao        | f          | f            |    191 |     89
        37 | Isahella   | Antonazzi  |  44 | Female | 8248 Fulton Lane      | (898) 9762728 | iantonazzix@ft.com               | Project Manager             | Netherlands   | Utrecht University                                             | Amharic    | f          | f            |    106 |    110
        38 | Hedy       | Erickssen  |  53 | Female | 9953 Heffernan Plaza  | (574) 4619363 | hericksseny@live.com             | VP Quality Control          | Peru          | Universidad Senor de Sipan                                     | English    | t          | t            |    118 |     98
        39 | Ermina     | Pharo      |  63 | Female | 9 Pawling Terrace     | (866) 1897071 | epharoz@hc360.com                | Chief Design Engineer       | Greece        | Aristotle University of Thessaloniki                           | Estonian   | f          | t            |    202 |     71
        40 | Putnam     | McGonigle  |  72 | Male   | 38 Rowland Circle     | (782) 1907998 | pmcgonigle10@mashable.com        | Database Administrator I    | Argentina     | Universidad Argentina "John F. Kennedy"                        | Portuguese | f          | t            |    102 |     99
        41 | Karlyn     | Pankhurst. |  36 | Female | 250 Springs Terrace   | (569) 9709310 | kpankhurst11@cargocollective.com | Safety Technician I         | Finland       | Central Ostrobothnia University of Applied Sciences            | Kazakh     | t          | f            |    168 |     82
         4 | Lauritz    | Whatsize   |  49 | Male   | Гражданская 119       | (949) 9383169 | gggjjj22@gmail.com               | Analytic Engineer           | Iran          | Yazd Medical University                                        | Kazakh     | f          | f            |    109 |    120
(27 ёЄЁюъ)


postgres3=# update people set phone_number = '(555)465446456' where person_id = 40;
UPDATE 1
postgres3=# select *from people where person_id = 40;
 person_id | first_name | last_name | age | gender |      address      |  phone_number  |           email           |        occupation        | nationality |                education                |  language  | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+-------------------+----------------+---------------------------+--------------------------+-------------+-----------------------------------------+------------+------------+--------------+--------+--------
        40 | Putnam     | McGonigle |  72 | Male   | 38 Rowland Circle | (555)465446456 | pmcgonigle10@mashable.com | Database Administrator I | Argentina   | Universidad Argentina "John F. Kennedy" | Portuguese | f          | t            |    102 |     99
(1 ёЄЁюър)


postgres3=# select *from people where email ilike '%.com' and phone_number ilike '555%';
 person_id | first_name | last_name | age | gender | address | phone_number | email | occupation | nationality | education | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+---------+--------------+-------+------------+-------------+-----------+----------+------------+--------------+--------+--------
(0 ёЄЁюъ)


postgres3=#  select *from people where email ilike '%.com' and phone_number ilike '(555%)';
 person_id | first_name | last_name | age | gender | address | phone_number | email | occupation | nationality | education | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+---------+--------------+-------+------------+-------------+-----------+----------+------------+--------------+--------+--------
(0 ёЄЁюъ)


postgres3=# select*from people;
 person_id | first_name |  last_name   | age | gender |        address         |  phone_number  |              email               |           occupation           |   nationality    |                            education                            |  language   | is_married | has_children | height | weight
-----------+------------+--------------+-----+--------+------------------------+----------------+----------------------------------+--------------------------------+------------------+-----------------------------------------------------------------+-------------+------------+--------------+--------+--------
         2 | Leo        | Messi        |  35 | M      | aitmatova str 57       | +996708456378  | leo@gmail.com                    | footballer                     | argentinian      | master degree                                                   | spanish     | t          | t            |   1.69 |     72
         3 | Mike       | Meyers       |  27 | M      | baitik-baatyr str 48   | +996700285696  | mike@gmail.com                   | ceo of company                 | english          | master degree                                                   | english     | f          | f            |    1.8 |   80.2
         5 | Etta       | Joules       |  15 | Female | 1 Little Fleur Circle  | (747) 6895499  | ejoules1@weather.com             | Structural Engineer            | Albania          | Polytechnic University of Tirane                                | Malay       | t          | t            |    106 |     59
         6 | Loralyn    | Skelhorn     |  71 | Female | 45 Arizona Parkway     | (213) 8925684  | lskelhorn2@istockphoto.com       | Assistant Professor            | Indonesia        | Universitas 17 Agustus 1945 Banyuwangi                          | Catalan     | t          | t            |    155 |    117
         7 | Fawne      | Andrews      |  54 | Female | 365 Hansons Avenue     | (755) 9285401  | fandrews3@a8.net                 | VP Product Management          | France           | Ecole Polytechnique Marseille                                   | Montenegrin | f          | t            |    159 |     75
         8 | Edwin      | Simeonov     |  25 | Male   | 889 Rieder Terrace     | (227) 6305063  | esimeonov4@webmd.com             | Operator                       | China            | Jiangsu University of Science and Technology                    | Albanian    | t          | f            |    105 |     84
         9 | Ignace     | Curnnokk     |  60 | Male   | 0 Center Parkway       | (551) 5800839  | icurnnokk5@meetup.com            | Programmer II                  | Ukraine          | Ivano-Frankivsk National University of Oli and Gas              | Swahili     | f          | f            |    202 |    103
        10 | Eamon      | Cheeseman    |  58 | Male   | 03 Ridgeview Way       | (973) 3844019  | echeeseman6@statcounter.com      | Health Coach III               | Estonia          | Estonian Academy of Music and Theatre                           | Sotho       | t          | t            |    207 |     63
        11 | Addi       | Dwelling     |  74 | Female | 47 Declaration Pass    | (278) 4368780  | adwelling7@eventbrite.com        | Accounting Assistant II        | China            | China University of Mining Technology - Beijing                 | Hiri Motu   | f          | t            |    122 |     96
        12 | Wilow      | Giannassi    |  48 | Female | 354 Reindahl Hill      | (640) 7050043  | wgiannassi8@google.fr            | Desktop Support Technician     | Ireland          | Dublin Institute for Advanced Studies                           | Polish      | f          | f            |    147 |     85
        13 | Latisha    | Ivanishin    |  25 | Female | 2 Colorado Crossing    | (873) 3919592  | livanishin9@g.co                 | Nuclear Power Engineer         | Sweden           | Royal lnstitute of Technology                                   | Arabic      | f          | f            |    123 |    102
        14 | Rollie     | Arden        |  33 | Male   | 46 Express Parkway     | (384) 4353937  | rardena@e-recht24.de             | Software Test Engineer III     | Iran             | Isfahan University                                              | Hindi       | t          | f            |    108 |     52
        15 | Hymie      | Stringfellow |  18 | Male   | 623 Eggendart Crossing | (286) 9427568  | hstringfellowb@state.tx.us       | Research Assistant III         | Philippines      | University of the East, Ramon Magsaysay Memorial Medical Center | Kyrgyz      | f          | f            |    190 |     62
        16 | Osmond     | Furness      |  44 | Male   | 903 Oriole Lane        | (869) 9383143  | ofurnessc@dedecms.com            | Developer II                   | China            | Inner Mongolia Normal University                                | Kannada     | t          | f            |    143 |    119
        17 | Maybelle   | Dain         |  44 | Female | 71473 Tomscot Plaza    | (133) 9148333  | mdaind@g.co                      | Human Resources Manager        | China            | Huanghe Science & Technology University                         | Mongolian   | t          | t            |    111 |    105
        18 | Zacharia   | Gent         |  45 | Male   | 5 Talisman Park        | (231) 8792421  | zgente@posterous.com             | Dental Hygienist               | Indonesia        | Universitas Slamet Riyadi Surakarta                             | Belarusian  | t          | f            |    164 |     96
        19 | Darsey     | McGivena     |  51 | Female | 799 Sommers Alley      | (303) 7093269  | dmcgivenaf@salon.com             | Budget/Accounting Analyst I    | Philippines      | Wesleyan University Philippines                                 | Malayalam   | f          | f            |    152 |     93
        20 | Arlyn      | Karlsen      |  64 | Female | 8 Aberg Trail          | (194) 8557201  | akarlseng@house.gov              | Payment Adjustment Coordinator | Japan            | Nippon Medical School                                           | Estonian    | t          | f            |    166 |    103
        21 | Aileen     | Gaishson     |  66 | Female | 9100 Bayside Pass      | (915) 3753279  | agaishsonh@wikia.com             | VP Accounting                  | Israel           | Russell Berrie Nanotechnology Institute                         | Hungarian   | f          | f            |    114 |     52
        22 | Neddie     | Berkley      |  23 | Male   | 18 Thackeray Road      | (837) 5101009  | nberkleyi@qq.com                 | Software Test Engineer II      | Philippines      | Central Philippine University                                   | Dutch       | f          | t            |    205 |     99
        23 | Johannes   | Daughton     |  29 | Male   | 37 Acker Place         | (526) 8118211  | jdaughtonj@mac.com               | Electrical Engineer            | China            | Guizhou Normal University                                       | Bislama     | f          | t            |    218 |     73
        24 | Brooks     | Fiddyment    |  58 | Female | 36823 Rigney Alley     | (502) 1778971  | bfiddymentk@ibm.com              | Recruiting Manager             | United States    | Washington College                                              | Polish      | t          | t            |    170 |    105
        25 | Cally      | Sowthcote    |  52 | Female | 0 Hintze Park          | (880) 6837178  | csowthcotel@yandex.ru            | Clinical Specialist            | Brazil           | Universidade do Rio Grande                                      | Lithuanian  | f          | t            |    152 |     41
        26 | Zandra     | Lodder       |  32 | Female | 835 Buhler Trail       | (418) 5306885  | zlodderm@admin.ch                | Financial Advisor              | Belarus          | Minsk Institute of Management                                   | Swahili     | t          | f            |    142 |     84
        27 | Redford    | Mussett      |  35 | Male   | 9382 Hayes Avenue      | (363) 2023845  | rmussettn@dion.ne.jp             | General Manager                | Saint Barthelemy | The College of The Bahamas                                      | Tok Pisin   | f          | f            |    179 |     79
        28 | Abner      | McClinton    |  60 | Male   | 8360 Emmet Center      | (169) 9535987  | amcclintono@seattletimes.com     | Human Resources Assistant I    | China            | Chongqing Normal University Foreign Trade and Business College  | Indonesian  | t          | t            |    132 |     44
        29 | Clive      | Vearnals     |  46 | Male   | 56 Sheridan Plaza      | (523) 1555191  | cvearnalsp@accuweather.com       | Administrative Assistant II    | Indonesia        | Universitas Tarumanagara                                        | Tok Pisin   | f          | t            |    126 |     54
        30 | Wells      | Liles        |  47 | Male   | 72671 Claremont Place  | (455) 1261507  | wlilesq@artisteer.com            | Dental Hygienist               | Brazil           | Universidade Catolica de Salvador                               | Telugu      | t          | f            |    181 |     75
        31 | Kit        | Lillgard     |  54 | Male   | 72061 Amoth Park       | (953) 6837652  | klillgardr@seesaa.net            | Registered Nurse               | Bulgaria         | Medical University Pleven                                       | Assamese    | f          | t            |    208 |     58
        32 | Flint      | Brownjohn    |  59 | Male   | 1205 Huxley Hill       | (646) 5148628  | fbrownjohns@chron.com            | Administrative Officer         | China            | Shanghai Lida Polytechnic Institute                             | Tetum       | f          | t            |    184 |     96
        33 | Jorie      | Jay          |  79 | Female | 70688 Stuart Hill      | (649) 7582538  | jjayt@skype.com                  | VP Product Management          | Azerbaijan       | Academy of Public Administration                                | Maori       | f          | t            |    182 |     42
        34 | Layla      | deKnevet     |  54 | Female | 9 Green Ridge Circle   | (515) 6378757  | ldeknevetu@ted.com               | Registered Nurse               | Vietnam          | Tay Nguyen University                                           | Lao         | f          | f            |    191 |     89
        35 | Leif       | Tingly       |  51 | Male   | 2407 Nevada Junction   | (596) 4347850  | ltinglyv@wikipedia.org           | Associate Professor            | Philippines      | Misamis University                                              | Aymara      | t          | f            |    164 |     43
        36 | Cash       | Esilmon      |  69 | Male   | 531 Bobwhite Road      | (275) 1440835  | cesilmonw@google.it              | VP Product Management          | China            | South China Construction University                             | Dzongkha    | f          | f            |    125 |     55
        37 | Isahella   | Antonazzi    |  44 | Female | 8248 Fulton Lane       | (898) 9762728  | iantonazzix@ft.com               | Project Manager                | Netherlands      | Utrecht University                                              | Amharic     | f          | f            |    106 |    110
        38 | Hedy       | Erickssen    |  53 | Female | 9953 Heffernan Plaza   | (574) 4619363  | hericksseny@live.com             | VP Quality Control             | Peru             | Universidad Senor de Sipan                                      | English     | t          | t            |    118 |     98
        39 | Ermina     | Pharo        |  63 | Female | 9 Pawling Terrace      | (866) 1897071  | epharoz@hc360.com                | Chief Design Engineer          | Greece           | Aristotle University of Thessaloniki                            | Estonian    | f          | t            |    202 |     71
        40 | Putnam     | McGonigle    |  72 | Male   | 38 Rowland Circle      | (555)465446456 | pmcgonigle10@mashable.com        | Database Administrator I       | Argentina        | Universidad Argentina "John F. Kennedy"                         | Portuguese  | f          | t            |    102 |     99
        41 | Karlyn     | Pankhurst.   |  36 | Female | 250 Springs Terrace    | (569) 9709310  | kpankhurst11@cargocollective.com | Safety Technician I            | Finland          | Central Ostrobothnia University of Applied Sciences             | Kazakh      | t          | f            |    168 |     82
        42 | Alwyn      | Kelwaybamber |  67 | Male   | 13673 Cody Alley       | (612) 9321633  | akelwaybamber12@github.io        | Cost Accountant                | Poland           | Silesian Academy of Medicine in Katowice                        | Amharic     | f          | f            |    152 |     82
        43 | Read       | Bottle       |  20 | Male   | 4131 Nevada Alley      | (294) 1763810  | rbottle13@usda.gov               | VP Marketing                   | Colombia         | Universidad Santiago de Cali                                    | Aymara      | t          | t            |    204 |    115
         4 | Lauritz    | Whatsize     |  49 | Male   | Гражданская 119        | (949) 9383169  | gggjjj22@gmail.com               | Analytic Engineer              | Iran             | Yazd Medical University                                         | Kazakh      | f          | f            |    109 |    120
(42 ёЄЁюъш)


postgres3=# select *from people where email ilike '%.com' and phone_number ilike '(555)%';
 person_id | first_name | last_name | age | gender |      address      |  phone_number  |           email           |        occupation        | nationality |                education                |  language  | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+-------------------+----------------+---------------------------+--------------------------+-------------+-----------------------------------------+------------+------------+--------------+--------+--------
        40 | Putnam     | McGonigle |  72 | Male   | 38 Rowland Circle | (555)465446456 | pmcgonigle10@mashable.com | Database Administrator I | Argentina   | Universidad Argentina "John F. Kennedy" | Portuguese | f          | t            |    102 |     99
(1 ёЄЁюър)


postgres3=# select *from people where occupation =null;
 person_id | first_name | last_name | age | gender | address | phone_number | email | occupation | nationality | education | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+---------+--------------+-------+------------+-------------+-----------+----------+------------+--------------+--------+--------
(0 ёЄЁюъ)


postgres3=# update people set occupation = null where person_id = 38;
UPDATE 1
postgres3=# select*from people where person_id = 38;
 person_id | first_name | last_name | age | gender |       address        | phone_number  |        email         | occupation | nationality |         education          | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+----------------------+---------------+----------------------+------------+-------------+----------------------------+----------+------------+--------------+--------+--------
        38 | Hedy       | Erickssen |  53 | Female | 9953 Heffernan Plaza | (574) 4619363 | hericksseny@live.com |            | Peru        | Universidad Senor de Sipan | English  | t          | t            |    118 |     98
(1 ёЄЁюър)


postgres3=# select *from people where occupation = null;
 person_id | first_name | last_name | age | gender | address | phone_number | email | occupation | nationality | education | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+---------+--------------+-------+------------+-------------+-----------+----------+------------+--------------+--------+--------
(0 ёЄЁюъ)


postgres3=# select occupation = null from people;
 ?column?
----------










































(42 ёЄЁюъш)


postgres3=#
postgres3=#
postgres3=# select *from people where person_id = 38;
 person_id | first_name | last_name | age | gender |       address        | phone_number  |        email         | occupation | nationality |         education          | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+----------------------+---------------+----------------------+------------+-------------+----------------------------+----------+------------+--------------+--------+--------
        38 | Hedy       | Erickssen |  53 | Female | 9953 Heffernan Plaza | (574) 4619363 | hericksseny@live.com |            | Peru        | Universidad Senor de Sipan | English  | t          | t            |    118 |     98
(1 ёЄЁюър)


postgres3=# select occupation from people where occupation = null;
 occupation
------------
(0 ёЄЁюъ)


postgres3=# select person_id,occupation from people where occupation = null;
 person_id | occupation
-----------+------------
(0 ёЄЁюъ)


postgres3=# select first_name,occupation from people where occupation = null;
 first_name | occupation
------------+------------
(0 ёЄЁюъ)


postgres3=# select *from people where occupation = null;
 person_id | first_name | last_name | age | gender | address | phone_number | email | occupation | nationality | education | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+---------+--------------+-------+------------+-------------+-----------+----------+------------+--------------+--------+--------
(0 ёЄЁюъ)


postgres3=# select first_name,occupation count(*)from people where occupation = null;
ОШИБКА:  ошибка синтаксиса (примерное положение: "(")
СТРОКА 1: select first_name,occupation count(*)from people where occup...
                                            ^
postgres3=# select occupation count(*)from people where occupation = null;
ОШИБКА:  ошибка синтаксиса (примерное положение: "(")
СТРОКА 1: select occupation count(*)from people where occupation = nul...
                                 ^
postgres3=# select *from people where occupation = null;
 person_id | first_name | last_name | age | gender | address | phone_number | email | occupation | nationality | education | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+---------+--------------+-------+------------+-------------+-----------+----------+------------+--------------+--------+--------
(0 ёЄЁюъ)


postgres3=# select *from people where occupation = ____;
ОШИБКА:  столбец "____" не существует
СТРОКА 1: select *from people where occupation = ____;
                                                 ^
postgres3=# select *from people where person_id = 38;
 person_id | first_name | last_name | age | gender |       address        | phone_number  |        email         | occupation | nationality |         education          | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+----------------------+---------------+----------------------+------------+-------------+----------------------------+----------+------------+--------------+--------+--------
        38 | Hedy       | Erickssen |  53 | Female | 9953 Heffernan Plaza | (574) 4619363 | hericksseny@live.com |            | Peru        | Universidad Senor de Sipan | English  | t          | t            |    118 |     98
(1 ёЄЁюър)


postgres3=#  select *from people where occupation = '';
 person_id | first_name | last_name | age | gender | address | phone_number | email | occupation | nationality | education | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+---------+--------------+-------+------------+-------------+-----------+----------+------------+--------------+--------+--------
(0 ёЄЁюъ)


postgres3=# select *from people where occupation ilike '';
 person_id | first_name | last_name | age | gender | address | phone_number | email | occupation | nationality | education | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+---------+--------------+-------+------------+-------------+-----------+----------+------------+--------------+--------+--------
(0 ёЄЁюъ)


postgres3=#  select *from people where occupation = 'null';
 person_id | first_name | last_name | age | gender | address | phone_number | email | occupation | nationality | education | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+---------+--------------+-------+------------+-------------+-----------+----------+------------+--------------+--------+--------
(0 ёЄЁюъ)


postgres3=# select*from people;
 person_id | first_name |  last_name   | age | gender |        address         |  phone_number  |              email               |           occupation           |   nationality    |                            education                            |  language   | is_married | has_children | height | weight
-----------+------------+--------------+-----+--------+------------------------+----------------+----------------------------------+--------------------------------+------------------+-----------------------------------------------------------------+-------------+------------+--------------+--------+--------
         2 | Leo        | Messi        |  35 | M      | aitmatova str 57       | +996708456378  | leo@gmail.com                    | footballer                     | argentinian      | master degree                                                   | spanish     | t          | t            |   1.69 |     72
         3 | Mike       | Meyers       |  27 | M      | baitik-baatyr str 48   | +996700285696  | mike@gmail.com                   | ceo of company                 | english          | master degree                                                   | english     | f          | f            |    1.8 |   80.2
         5 | Etta       | Joules       |  15 | Female | 1 Little Fleur Circle  | (747) 6895499  | ejoules1@weather.com             | Structural Engineer            | Albania          | Polytechnic University of Tirane                                | Malay       | t          | t            |    106 |     59
         6 | Loralyn    | Skelhorn     |  71 | Female | 45 Arizona Parkway     | (213) 8925684  | lskelhorn2@istockphoto.com       | Assistant Professor            | Indonesia        | Universitas 17 Agustus 1945 Banyuwangi                          | Catalan     | t          | t            |    155 |    117
         7 | Fawne      | Andrews      |  54 | Female | 365 Hansons Avenue     | (755) 9285401  | fandrews3@a8.net                 | VP Product Management          | France           | Ecole Polytechnique Marseille                                   | Montenegrin | f          | t            |    159 |     75
         8 | Edwin      | Simeonov     |  25 | Male   | 889 Rieder Terrace     | (227) 6305063  | esimeonov4@webmd.com             | Operator                       | China            | Jiangsu University of Science and Technology                    | Albanian    | t          | f            |    105 |     84
         9 | Ignace     | Curnnokk     |  60 | Male   | 0 Center Parkway       | (551) 5800839  | icurnnokk5@meetup.com            | Programmer II                  | Ukraine          | Ivano-Frankivsk National University of Oli and Gas              | Swahili     | f          | f            |    202 |    103
        10 | Eamon      | Cheeseman    |  58 | Male   | 03 Ridgeview Way       | (973) 3844019  | echeeseman6@statcounter.com      | Health Coach III               | Estonia          | Estonian Academy of Music and Theatre                           | Sotho       | t          | t            |    207 |     63
        11 | Addi       | Dwelling     |  74 | Female | 47 Declaration Pass    | (278) 4368780  | adwelling7@eventbrite.com        | Accounting Assistant II        | China            | China University of Mining Technology - Beijing                 | Hiri Motu   | f          | t            |    122 |     96
        12 | Wilow      | Giannassi    |  48 | Female | 354 Reindahl Hill      | (640) 7050043  | wgiannassi8@google.fr            | Desktop Support Technician     | Ireland          | Dublin Institute for Advanced Studies                           | Polish      | f          | f            |    147 |     85
        13 | Latisha    | Ivanishin    |  25 | Female | 2 Colorado Crossing    | (873) 3919592  | livanishin9@g.co                 | Nuclear Power Engineer         | Sweden           | Royal lnstitute of Technology                                   | Arabic      | f          | f            |    123 |    102
        14 | Rollie     | Arden        |  33 | Male   | 46 Express Parkway     | (384) 4353937  | rardena@e-recht24.de             | Software Test Engineer III     | Iran             | Isfahan University                                              | Hindi       | t          | f            |    108 |     52
        15 | Hymie      | Stringfellow |  18 | Male   | 623 Eggendart Crossing | (286) 9427568  | hstringfellowb@state.tx.us       | Research Assistant III         | Philippines      | University of the East, Ramon Magsaysay Memorial Medical Center | Kyrgyz      | f          | f            |    190 |     62
        16 | Osmond     | Furness      |  44 | Male   | 903 Oriole Lane        | (869) 9383143  | ofurnessc@dedecms.com            | Developer II                   | China            | Inner Mongolia Normal University                                | Kannada     | t          | f            |    143 |    119
        17 | Maybelle   | Dain         |  44 | Female | 71473 Tomscot Plaza    | (133) 9148333  | mdaind@g.co                      | Human Resources Manager        | China            | Huanghe Science & Technology University                         | Mongolian   | t          | t            |    111 |    105
        18 | Zacharia   | Gent         |  45 | Male   | 5 Talisman Park        | (231) 8792421  | zgente@posterous.com             | Dental Hygienist               | Indonesia        | Universitas Slamet Riyadi Surakarta                             | Belarusian  | t          | f            |    164 |     96
        19 | Darsey     | McGivena     |  51 | Female | 799 Sommers Alley      | (303) 7093269  | dmcgivenaf@salon.com             | Budget/Accounting Analyst I    | Philippines      | Wesleyan University Philippines                                 | Malayalam   | f          | f            |    152 |     93
        20 | Arlyn      | Karlsen      |  64 | Female | 8 Aberg Trail          | (194) 8557201  | akarlseng@house.gov              | Payment Adjustment Coordinator | Japan            | Nippon Medical School                                           | Estonian    | t          | f            |    166 |    103
        21 | Aileen     | Gaishson     |  66 | Female | 9100 Bayside Pass      | (915) 3753279  | agaishsonh@wikia.com             | VP Accounting                  | Israel           | Russell Berrie Nanotechnology Institute                         | Hungarian   | f          | f            |    114 |     52
        22 | Neddie     | Berkley      |  23 | Male   | 18 Thackeray Road      | (837) 5101009  | nberkleyi@qq.com                 | Software Test Engineer II      | Philippines      | Central Philippine University                                   | Dutch       | f          | t            |    205 |     99
        23 | Johannes   | Daughton     |  29 | Male   | 37 Acker Place         | (526) 8118211  | jdaughtonj@mac.com               | Electrical Engineer            | China            | Guizhou Normal University                                       | Bislama     | f          | t            |    218 |     73
        24 | Brooks     | Fiddyment    |  58 | Female | 36823 Rigney Alley     | (502) 1778971  | bfiddymentk@ibm.com              | Recruiting Manager             | United States    | Washington College                                              | Polish      | t          | t            |    170 |    105
        25 | Cally      | Sowthcote    |  52 | Female | 0 Hintze Park          | (880) 6837178  | csowthcotel@yandex.ru            | Clinical Specialist            | Brazil           | Universidade do Rio Grande                                      | Lithuanian  | f          | t            |    152 |     41
        26 | Zandra     | Lodder       |  32 | Female | 835 Buhler Trail       | (418) 5306885  | zlodderm@admin.ch                | Financial Advisor              | Belarus          | Minsk Institute of Management                                   | Swahili     | t          | f            |    142 |     84
        27 | Redford    | Mussett      |  35 | Male   | 9382 Hayes Avenue      | (363) 2023845  | rmussettn@dion.ne.jp             | General Manager                | Saint Barthelemy | The College of The Bahamas                                      | Tok Pisin   | f          | f            |    179 |     79
        28 | Abner      | McClinton    |  60 | Male   | 8360 Emmet Center      | (169) 9535987  | amcclintono@seattletimes.com     | Human Resources Assistant I    | China            | Chongqing Normal University Foreign Trade and Business College  | Indonesian  | t          | t            |    132 |     44
        29 | Clive      | Vearnals     |  46 | Male   | 56 Sheridan Plaza      | (523) 1555191  | cvearnalsp@accuweather.com       | Administrative Assistant II    | Indonesia        | Universitas Tarumanagara                                        | Tok Pisin   | f          | t            |    126 |     54
        30 | Wells      | Liles        |  47 | Male   | 72671 Claremont Place  | (455) 1261507  | wlilesq@artisteer.com            | Dental Hygienist               | Brazil           | Universidade Catolica de Salvador                               | Telugu      | t          | f            |    181 |     75
        31 | Kit        | Lillgard     |  54 | Male   | 72061 Amoth Park       | (953) 6837652  | klillgardr@seesaa.net            | Registered Nurse               | Bulgaria         | Medical University Pleven                                       | Assamese    | f          | t            |    208 |     58
        32 | Flint      | Brownjohn    |  59 | Male   | 1205 Huxley Hill       | (646) 5148628  | fbrownjohns@chron.com            | Administrative Officer         | China            | Shanghai Lida Polytechnic Institute                             | Tetum       | f          | t            |    184 |     96
        33 | Jorie      | Jay          |  79 | Female | 70688 Stuart Hill      | (649) 7582538  | jjayt@skype.com                  | VP Product Management          | Azerbaijan       | Academy of Public Administration                                | Maori       | f          | t            |    182 |     42
        34 | Layla      | deKnevet     |  54 | Female | 9 Green Ridge Circle   | (515) 6378757  | ldeknevetu@ted.com               | Registered Nurse               | Vietnam          | Tay Nguyen University                                           | Lao         | f          | f            |    191 |     89
        35 | Leif       | Tingly       |  51 | Male   | 2407 Nevada Junction   | (596) 4347850  | ltinglyv@wikipedia.org           | Associate Professor            | Philippines      | Misamis University                                              | Aymara      | t          | f            |    164 |     43
        36 | Cash       | Esilmon      |  69 | Male   | 531 Bobwhite Road      | (275) 1440835  | cesilmonw@google.it              | VP Product Management          | China            | South China Construction University                             | Dzongkha    | f          | f            |    125 |     55
        37 | Isahella   | Antonazzi    |  44 | Female | 8248 Fulton Lane       | (898) 9762728  | iantonazzix@ft.com               | Project Manager                | Netherlands      | Utrecht University                                              | Amharic     | f          | f            |    106 |    110
        39 | Ermina     | Pharo        |  63 | Female | 9 Pawling Terrace      | (866) 1897071  | epharoz@hc360.com                | Chief Design Engineer          | Greece           | Aristotle University of Thessaloniki                            | Estonian    | f          | t            |    202 |     71
        40 | Putnam     | McGonigle    |  72 | Male   | 38 Rowland Circle      | (555)465446456 | pmcgonigle10@mashable.com        | Database Administrator I       | Argentina        | Universidad Argentina "John F. Kennedy"                         | Portuguese  | f          | t            |    102 |     99
        38 | Hedy       | Erickssen    |  53 | Female | 9953 Heffernan Plaza   | (574) 4619363  | hericksseny@live.com             |                                | Peru             | Universidad Senor de Sipan                                      | English     | t          | t            |    118 |     98
        41 | Karlyn     | Pankhurst.   |  36 | Female | 250 Springs Terrace    | (569) 9709310  | kpankhurst11@cargocollective.com | Safety Technician I            | Finland          | Central Ostrobothnia University of Applied Sciences             | Kazakh      | t          | f            |    168 |     82
        42 | Alwyn      | Kelwaybamber |  67 | Male   | 13673 Cody Alley       | (612) 9321633  | akelwaybamber12@github.io        | Cost Accountant                | Poland           | Silesian Academy of Medicine in Katowice                        | Amharic     | f          | f            |    152 |     82
        43 | Read       | Bottle       |  20 | Male   | 4131 Nevada Alley      | (294) 1763810  | rbottle13@usda.gov               | VP Marketing                   | Colombia         | Universidad Santiago de Cali                                    | Aymara      | t          | t            |    204 |    115
         4 | Lauritz    | Whatsize     |  49 | Male   | Гражданская 119        | (949) 9383169  | gggjjj22@gmail.com               | Analytic Engineer              | Iran             | Yazd Medical University                                         | Kazakh      | f          | f            |    109 |    120
(42 ёЄЁюъш)


postgres3=# select *from people where occupation = null;
 person_id | first_name | last_name | age | gender | address | phone_number | email | occupation | nationality | education | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+---------+--------------+-------+------------+-------------+-----------+----------+------------+--------------+--------+--------
(0 ёЄЁюъ)


postgres3=# select *from people where occupation is null;
 person_id | first_name | last_name | age | gender |       address        | phone_number  |        email         | occupation | nationality |         education          | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+----------------------+---------------+----------------------+------------+-------------+----------------------------+----------+------------+--------------+--------+--------
        38 | Hedy       | Erickssen |  53 | Female | 9953 Heffernan Plaza | (574) 4619363 | hericksseny@live.com |            | Peru        | Universidad Senor de Sipan | English  | t          | t            |    118 |     98
(1 ёЄЁюър)


postgres3=# select*from people where is_married is false;
 person_id | first_name |  last_name   | age | gender |        address         |  phone_number  |           email            |         occupation          |   nationality    |                            education                            |  language   | is_married | has_children | height | weight
-----------+------------+--------------+-----+--------+------------------------+----------------+----------------------------+-----------------------------+------------------+-----------------------------------------------------------------+-------------+------------+--------------+--------+--------
         3 | Mike       | Meyers       |  27 | M      | baitik-baatyr str 48   | +996700285696  | mike@gmail.com             | ceo of company              | english          | master degree                                                   | english     | f          | f            |    1.8 |   80.2
         7 | Fawne      | Andrews      |  54 | Female | 365 Hansons Avenue     | (755) 9285401  | fandrews3@a8.net           | VP Product Management       | France           | Ecole Polytechnique Marseille                                   | Montenegrin | f          | t            |    159 |     75
         9 | Ignace     | Curnnokk     |  60 | Male   | 0 Center Parkway       | (551) 5800839  | icurnnokk5@meetup.com      | Programmer II               | Ukraine          | Ivano-Frankivsk National University of Oli and Gas              | Swahili     | f          | f            |    202 |    103
        11 | Addi       | Dwelling     |  74 | Female | 47 Declaration Pass    | (278) 4368780  | adwelling7@eventbrite.com  | Accounting Assistant II     | China            | China University of Mining Technology - Beijing                 | Hiri Motu   | f          | t            |    122 |     96
        12 | Wilow      | Giannassi    |  48 | Female | 354 Reindahl Hill      | (640) 7050043  | wgiannassi8@google.fr      | Desktop Support Technician  | Ireland          | Dublin Institute for Advanced Studies                           | Polish      | f          | f            |    147 |     85
        13 | Latisha    | Ivanishin    |  25 | Female | 2 Colorado Crossing    | (873) 3919592  | livanishin9@g.co           | Nuclear Power Engineer      | Sweden           | Royal lnstitute of Technology                                   | Arabic      | f          | f            |    123 |    102
        15 | Hymie      | Stringfellow |  18 | Male   | 623 Eggendart Crossing | (286) 9427568  | hstringfellowb@state.tx.us | Research Assistant III      | Philippines      | University of the East, Ramon Magsaysay Memorial Medical Center | Kyrgyz      | f          | f            |    190 |     62
        19 | Darsey     | McGivena     |  51 | Female | 799 Sommers Alley      | (303) 7093269  | dmcgivenaf@salon.com       | Budget/Accounting Analyst I | Philippines      | Wesleyan University Philippines                                 | Malayalam   | f          | f            |    152 |     93
        21 | Aileen     | Gaishson     |  66 | Female | 9100 Bayside Pass      | (915) 3753279  | agaishsonh@wikia.com       | VP Accounting               | Israel           | Russell Berrie Nanotechnology Institute                         | Hungarian   | f          | f            |    114 |     52
        22 | Neddie     | Berkley      |  23 | Male   | 18 Thackeray Road      | (837) 5101009  | nberkleyi@qq.com           | Software Test Engineer II   | Philippines      | Central Philippine University                                   | Dutch       | f          | t            |    205 |     99
        23 | Johannes   | Daughton     |  29 | Male   | 37 Acker Place         | (526) 8118211  | jdaughtonj@mac.com         | Electrical Engineer         | China            | Guizhou Normal University                                       | Bislama     | f          | t            |    218 |     73
        25 | Cally      | Sowthcote    |  52 | Female | 0 Hintze Park          | (880) 6837178  | csowthcotel@yandex.ru      | Clinical Specialist         | Brazil           | Universidade do Rio Grande                                      | Lithuanian  | f          | t            |    152 |     41
        27 | Redford    | Mussett      |  35 | Male   | 9382 Hayes Avenue      | (363) 2023845  | rmussettn@dion.ne.jp       | General Manager             | Saint Barthelemy | The College of The Bahamas                                      | Tok Pisin   | f          | f            |    179 |     79
        29 | Clive      | Vearnals     |  46 | Male   | 56 Sheridan Plaza      | (523) 1555191  | cvearnalsp@accuweather.com | Administrative Assistant II | Indonesia        | Universitas Tarumanagara                                        | Tok Pisin   | f          | t            |    126 |     54
        31 | Kit        | Lillgard     |  54 | Male   | 72061 Amoth Park       | (953) 6837652  | klillgardr@seesaa.net      | Registered Nurse            | Bulgaria         | Medical University Pleven                                       | Assamese    | f          | t            |    208 |     58
        32 | Flint      | Brownjohn    |  59 | Male   | 1205 Huxley Hill       | (646) 5148628  | fbrownjohns@chron.com      | Administrative Officer      | China            | Shanghai Lida Polytechnic Institute                             | Tetum       | f          | t            |    184 |     96
        33 | Jorie      | Jay          |  79 | Female | 70688 Stuart Hill      | (649) 7582538  | jjayt@skype.com            | VP Product Management       | Azerbaijan       | Academy of Public Administration                                | Maori       | f          | t            |    182 |     42
        34 | Layla      | deKnevet     |  54 | Female | 9 Green Ridge Circle   | (515) 6378757  | ldeknevetu@ted.com         | Registered Nurse            | Vietnam          | Tay Nguyen University                                           | Lao         | f          | f            |    191 |     89
        36 | Cash       | Esilmon      |  69 | Male   | 531 Bobwhite Road      | (275) 1440835  | cesilmonw@google.it        | VP Product Management       | China            | South China Construction University                             | Dzongkha    | f          | f            |    125 |     55
        37 | Isahella   | Antonazzi    |  44 | Female | 8248 Fulton Lane       | (898) 9762728  | iantonazzix@ft.com         | Project Manager             | Netherlands      | Utrecht University                                              | Amharic     | f          | f            |    106 |    110
        39 | Ermina     | Pharo        |  63 | Female | 9 Pawling Terrace      | (866) 1897071  | epharoz@hc360.com          | Chief Design Engineer       | Greece           | Aristotle University of Thessaloniki                            | Estonian    | f          | t            |    202 |     71
        40 | Putnam     | McGonigle    |  72 | Male   | 38 Rowland Circle      | (555)465446456 | pmcgonigle10@mashable.com  | Database Administrator I    | Argentina        | Universidad Argentina "John F. Kennedy"                         | Portuguese  | f          | t            |    102 |     99
        42 | Alwyn      | Kelwaybamber |  67 | Male   | 13673 Cody Alley       | (612) 9321633  | akelwaybamber12@github.io  | Cost Accountant             | Poland           | Silesian Academy of Medicine in Katowice                        | Amharic     | f          | f            |    152 |     82
         4 | Lauritz    | Whatsize     |  49 | Male   | Гражданская 119        | (949) 9383169  | gggjjj22@gmail.com         | Analytic Engineer           | Iran             | Yazd Medical University                                         | Kazakh      | f          | f            |    109 |    120
(24 ёЄЁюъш)


postgres3=# select *from people where education ilike'%master';
 person_id | first_name | last_name | age | gender | address | phone_number | email | occupation | nationality | education | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+---------+--------------+-------+------------+-------------+-----------+----------+------------+--------------+--------+--------
(0 ёЄЁюъ)


postgres3=# select *from people where education ilike'master%';
 person_id | first_name | last_name | age | gender |       address        | phone_number  |     email      |   occupation   | nationality |   education   | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+----------------------+---------------+----------------+----------------+-------------+---------------+----------+------------+--------------+--------+--------
         2 | Leo        | Messi     |  35 | M      | aitmatova str 57     | +996708456378 | leo@gmail.com  | footballer     | argentinian | master degree | spanish  | t          | t            |   1.69 |     72
         3 | Mike       | Meyers    |  27 | M      | baitik-baatyr str 48 | +996700285696 | mike@gmail.com | ceo of company | english     | master degree | english  | f          | f            |    1.8 |   80.2
(2 ёЄЁюъш)


postgres3=# select *from people where height between 160 and 170;
 person_id | first_name | last_name  | age | gender |       address        | phone_number  |              email               |           occupation           |  nationality  |                      education                      |  language  | is_married | has_children | height | weight
-----------+------------+------------+-----+--------+----------------------+---------------+----------------------------------+--------------------------------+---------------+-----------------------------------------------------+------------+------------+--------------+--------+--------
        18 | Zacharia   | Gent       |  45 | Male   | 5 Talisman Park      | (231) 8792421 | zgente@posterous.com             | Dental Hygienist               | Indonesia     | Universitas Slamet Riyadi Surakarta                 | Belarusian | t          | f            |    164 |     96
        20 | Arlyn      | Karlsen    |  64 | Female | 8 Aberg Trail        | (194) 8557201 | akarlseng@house.gov              | Payment Adjustment Coordinator | Japan         | Nippon Medical School                               | Estonian   | t          | f            |    166 |    103
        24 | Brooks     | Fiddyment  |  58 | Female | 36823 Rigney Alley   | (502) 1778971 | bfiddymentk@ibm.com              | Recruiting Manager             | United States | Washington College                                  | Polish     | t          | t            |    170 |    105
        35 | Leif       | Tingly     |  51 | Male   | 2407 Nevada Junction | (596) 4347850 | ltinglyv@wikipedia.org           | Associate Professor            | Philippines   | Misamis University                                  | Aymara     | t          | f            |    164 |     43
        41 | Karlyn     | Pankhurst. |  36 | Female | 250 Springs Terrace  | (569) 9709310 | kpankhurst11@cargocollective.com | Safety Technician I            | Finland       | Central Ostrobothnia University of Applied Sciences | Kazakh     | t          | f            |    168 |     82
(5 ёЄЁюъ)


postgres3=# update people set language = 'English' where person_id = 32,27,29;
ОШИБКА:  ошибка синтаксиса (примерное положение: ",")
СТРОКА 1: ... people set language = 'English' where person_id = 32,27,29;
                                                                  ^
postgres3=# update people set language = 'English' where person_id = 32,person_id=27;
ОШИБКА:  ошибка синтаксиса (примерное положение: ",")
СТРОКА 1: ...ople set language = 'English' where person_id = 32,person_id...
                                                               ^
postgres3=# update people set language = 'English' where person_id = 32;
UPDATE 1
postgres3=# select*from people where person_id = 32;
 person_id | first_name | last_name | age | gender |     address      | phone_number  |         email         |       occupation       | nationality |              education              | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+------------------+---------------+-----------------------+------------------------+-------------+-------------------------------------+----------+------------+--------------+--------+--------
        32 | Flint      | Brownjohn |  59 | Male   | 1205 Huxley Hill | (646) 5148628 | fbrownjohns@chron.com | Administrative Officer | China       | Shanghai Lida Polytechnic Institute | English  | f          | t            |    184 |     96
(1 ёЄЁюър)


postgres3=# update people set language = 'chinese' where person_id=27;
UPDATE 1
postgres3=# update people set language = 'chinese' where person_id=10;
UPDATE 1
postgres3=# select*from people where language = 'chinese'and'english';
ОШИБКА:  неверный синтаксис для типа boolean: "english"
СТРОКА 1: select*from people where language = 'chinese'and'english';
                                                          ^
postgres3=# select *from people where language = 'chinese';
 person_id | first_name | last_name | age | gender |      address      | phone_number  |            email            |    occupation    |   nationality    |               education               | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+-------------------+---------------+-----------------------------+------------------+------------------+---------------------------------------+----------+------------+--------------+--------+--------
        27 | Redford    | Mussett   |  35 | Male   | 9382 Hayes Avenue | (363) 2023845 | rmussettn@dion.ne.jp        | General Manager  | Saint Barthelemy | The College of The Bahamas            | chinese  | f          | f            |    179 |     79
        10 | Eamon      | Cheeseman |  58 | Male   | 03 Ridgeview Way  | (973) 3844019 | echeeseman6@statcounter.com | Health Coach III | Estonia          | Estonian Academy of Music and Theatre | chinese  | t          | t            |    207 |     63
(2 ёЄЁюъш)


postgres3=# select*from people where language = 'english','chinese';
ОШИБКА:  ошибка синтаксиса (примерное положение: ",")
СТРОКА 1: select*from people where language = 'english','chinese';
                                                       ^
postgres3=# select*from people where language = 'english';
 person_id | first_name | last_name | age | gender |       address        | phone_number  |     email      |   occupation   | nationality |   education   | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+----------------------+---------------+----------------+----------------+-------------+---------------+----------+------------+--------------+--------+--------
         3 | Mike       | Meyers    |  27 | M      | baitik-baatyr str 48 | +996700285696 | mike@gmail.com | ceo of company | english     | master degree | english  | f          | f            |    1.8 |   80.2
(1 ёЄЁюър)


postgres3=# select*from people where language in('english','chinese');
 person_id | first_name | last_name | age | gender |       address        | phone_number  |            email            |    occupation    |   nationality    |               education               | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+----------------------+---------------+-----------------------------+------------------+------------------+---------------------------------------+----------+------------+--------------+--------+--------
         3 | Mike       | Meyers    |  27 | M      | baitik-baatyr str 48 | +996700285696 | mike@gmail.com              | ceo of company   | english          | master degree                         | english  | f          | f            |    1.8 |   80.2
        27 | Redford    | Mussett   |  35 | Male   | 9382 Hayes Avenue    | (363) 2023845 | rmussettn@dion.ne.jp        | General Manager  | Saint Barthelemy | The College of The Bahamas            | chinese  | f          | f            |    179 |     79
        10 | Eamon      | Cheeseman |  58 | Male   | 03 Ridgeview Way     | (973) 3844019 | echeeseman6@statcounter.com | Health Coach III | Estonia          | Estonian Academy of Music and Theatre | chinese  | t          | t            |    207 |     63
(3 ёЄЁюъш)


postgres3=# select *from people where is_married is false and has_children is true;
 person_id | first_name | last_name | age | gender |       address       |  phone_number  |           email            |         occupation          | nationality |                    education                    |  language   | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+---------------------+----------------+----------------------------+-----------------------------+-------------+-------------------------------------------------+-------------+------------+--------------+--------+--------
         7 | Fawne      | Andrews   |  54 | Female | 365 Hansons Avenue  | (755) 9285401  | fandrews3@a8.net           | VP Product Management       | France      | Ecole Polytechnique Marseille                   | Montenegrin | f          | t            |    159 |     75
        11 | Addi       | Dwelling  |  74 | Female | 47 Declaration Pass | (278) 4368780  | adwelling7@eventbrite.com  | Accounting Assistant II     | China       | China University of Mining Technology - Beijing | Hiri Motu   | f          | t            |    122 |     96
        22 | Neddie     | Berkley   |  23 | Male   | 18 Thackeray Road   | (837) 5101009  | nberkleyi@qq.com           | Software Test Engineer II   | Philippines | Central Philippine University                   | Dutch       | f          | t            |    205 |     99
        23 | Johannes   | Daughton  |  29 | Male   | 37 Acker Place      | (526) 8118211  | jdaughtonj@mac.com         | Electrical Engineer         | China       | Guizhou Normal University                       | Bislama     | f          | t            |    218 |     73
        25 | Cally      | Sowthcote |  52 | Female | 0 Hintze Park       | (880) 6837178  | csowthcotel@yandex.ru      | Clinical Specialist         | Brazil      | Universidade do Rio Grande                      | Lithuanian  | f          | t            |    152 |     41
        29 | Clive      | Vearnals  |  46 | Male   | 56 Sheridan Plaza   | (523) 1555191  | cvearnalsp@accuweather.com | Administrative Assistant II | Indonesia   | Universitas Tarumanagara                        | Tok Pisin   | f          | t            |    126 |     54
        31 | Kit        | Lillgard  |  54 | Male   | 72061 Amoth Park    | (953) 6837652  | klillgardr@seesaa.net      | Registered Nurse            | Bulgaria    | Medical University Pleven                       | Assamese    | f          | t            |    208 |     58
        33 | Jorie      | Jay       |  79 | Female | 70688 Stuart Hill   | (649) 7582538  | jjayt@skype.com            | VP Product Management       | Azerbaijan  | Academy of Public Administration                | Maori       | f          | t            |    182 |     42
        39 | Ermina     | Pharo     |  63 | Female | 9 Pawling Terrace   | (866) 1897071  | epharoz@hc360.com          | Chief Design Engineer       | Greece      | Aristotle University of Thessaloniki            | Estonian    | f          | t            |    202 |     71
        40 | Putnam     | McGonigle |  72 | Male   | 38 Rowland Circle   | (555)465446456 | pmcgonigle10@mashable.com  | Database Administrator I    | Argentina   | Universidad Argentina "John F. Kennedy"         | Portuguese  | f          | t            |    102 |     99
        32 | Flint      | Brownjohn |  59 | Male   | 1205 Huxley Hill    | (646) 5148628  | fbrownjohns@chron.com      | Administrative Officer      | China       | Shanghai Lida Polytechnic Institute             | English     | f          | t            |    184 |     96
(11 ёЄЁюъ)


postgres3=# select*from people where weight >80 or is_married is true;
 person_id | first_name |  last_name   | age | gender |        address        |  phone_number  |              email               |           occupation           |  nationality  |                           education                            |  language  | is_married | has_children | height | weight
-----------+------------+--------------+-----+--------+-----------------------+----------------+----------------------------------+--------------------------------+---------------+----------------------------------------------------------------+------------+------------+--------------+--------+--------
         2 | Leo        | Messi        |  35 | M      | aitmatova str 57      | +996708456378  | leo@gmail.com                    | footballer                     | argentinian   | master degree                                                  | spanish    | t          | t            |   1.69 |     72
         3 | Mike       | Meyers       |  27 | M      | baitik-baatyr str 48  | +996700285696  | mike@gmail.com                   | ceo of company                 | english       | master degree                                                  | english    | f          | f            |    1.8 |   80.2
         5 | Etta       | Joules       |  15 | Female | 1 Little Fleur Circle | (747) 6895499  | ejoules1@weather.com             | Structural Engineer            | Albania       | Polytechnic University of Tirane                               | Malay      | t          | t            |    106 |     59
         6 | Loralyn    | Skelhorn     |  71 | Female | 45 Arizona Parkway    | (213) 8925684  | lskelhorn2@istockphoto.com       | Assistant Professor            | Indonesia     | Universitas 17 Agustus 1945 Banyuwangi                         | Catalan    | t          | t            |    155 |    117
         8 | Edwin      | Simeonov     |  25 | Male   | 889 Rieder Terrace    | (227) 6305063  | esimeonov4@webmd.com             | Operator                       | China         | Jiangsu University of Science and Technology                   | Albanian   | t          | f            |    105 |     84
         9 | Ignace     | Curnnokk     |  60 | Male   | 0 Center Parkway      | (551) 5800839  | icurnnokk5@meetup.com            | Programmer II                  | Ukraine       | Ivano-Frankivsk National University of Oli and Gas             | Swahili    | f          | f            |    202 |    103
        11 | Addi       | Dwelling     |  74 | Female | 47 Declaration Pass   | (278) 4368780  | adwelling7@eventbrite.com        | Accounting Assistant II        | China         | China University of Mining Technology - Beijing                | Hiri Motu  | f          | t            |    122 |     96
        12 | Wilow      | Giannassi    |  48 | Female | 354 Reindahl Hill     | (640) 7050043  | wgiannassi8@google.fr            | Desktop Support Technician     | Ireland       | Dublin Institute for Advanced Studies                          | Polish     | f          | f            |    147 |     85
        13 | Latisha    | Ivanishin    |  25 | Female | 2 Colorado Crossing   | (873) 3919592  | livanishin9@g.co                 | Nuclear Power Engineer         | Sweden        | Royal lnstitute of Technology                                  | Arabic     | f          | f            |    123 |    102
        14 | Rollie     | Arden        |  33 | Male   | 46 Express Parkway    | (384) 4353937  | rardena@e-recht24.de             | Software Test Engineer III     | Iran          | Isfahan University                                             | Hindi      | t          | f            |    108 |     52
        16 | Osmond     | Furness      |  44 | Male   | 903 Oriole Lane       | (869) 9383143  | ofurnessc@dedecms.com            | Developer II                   | China         | Inner Mongolia Normal University                               | Kannada    | t          | f            |    143 |    119
        17 | Maybelle   | Dain         |  44 | Female | 71473 Tomscot Plaza   | (133) 9148333  | mdaind@g.co                      | Human Resources Manager        | China         | Huanghe Science & Technology University                        | Mongolian  | t          | t            |    111 |    105
        18 | Zacharia   | Gent         |  45 | Male   | 5 Talisman Park       | (231) 8792421  | zgente@posterous.com             | Dental Hygienist               | Indonesia     | Universitas Slamet Riyadi Surakarta                            | Belarusian | t          | f            |    164 |     96
        19 | Darsey     | McGivena     |  51 | Female | 799 Sommers Alley     | (303) 7093269  | dmcgivenaf@salon.com             | Budget/Accounting Analyst I    | Philippines   | Wesleyan University Philippines                                | Malayalam  | f          | f            |    152 |     93
        20 | Arlyn      | Karlsen      |  64 | Female | 8 Aberg Trail         | (194) 8557201  | akarlseng@house.gov              | Payment Adjustment Coordinator | Japan         | Nippon Medical School                                          | Estonian   | t          | f            |    166 |    103
        22 | Neddie     | Berkley      |  23 | Male   | 18 Thackeray Road     | (837) 5101009  | nberkleyi@qq.com                 | Software Test Engineer II      | Philippines   | Central Philippine University                                  | Dutch      | f          | t            |    205 |     99
        24 | Brooks     | Fiddyment    |  58 | Female | 36823 Rigney Alley    | (502) 1778971  | bfiddymentk@ibm.com              | Recruiting Manager             | United States | Washington College                                             | Polish     | t          | t            |    170 |    105
        26 | Zandra     | Lodder       |  32 | Female | 835 Buhler Trail      | (418) 5306885  | zlodderm@admin.ch                | Financial Advisor              | Belarus       | Minsk Institute of Management                                  | Swahili    | t          | f            |    142 |     84
        28 | Abner      | McClinton    |  60 | Male   | 8360 Emmet Center     | (169) 9535987  | amcclintono@seattletimes.com     | Human Resources Assistant I    | China         | Chongqing Normal University Foreign Trade and Business College | Indonesian | t          | t            |    132 |     44
        30 | Wells      | Liles        |  47 | Male   | 72671 Claremont Place | (455) 1261507  | wlilesq@artisteer.com            | Dental Hygienist               | Brazil        | Universidade Catolica de Salvador                              | Telugu     | t          | f            |    181 |     75
        34 | Layla      | deKnevet     |  54 | Female | 9 Green Ridge Circle  | (515) 6378757  | ldeknevetu@ted.com               | Registered Nurse               | Vietnam       | Tay Nguyen University                                          | Lao        | f          | f            |    191 |     89
        35 | Leif       | Tingly       |  51 | Male   | 2407 Nevada Junction  | (596) 4347850  | ltinglyv@wikipedia.org           | Associate Professor            | Philippines   | Misamis University                                             | Aymara     | t          | f            |    164 |     43
        37 | Isahella   | Antonazzi    |  44 | Female | 8248 Fulton Lane      | (898) 9762728  | iantonazzix@ft.com               | Project Manager                | Netherlands   | Utrecht University                                             | Amharic    | f          | f            |    106 |    110
        40 | Putnam     | McGonigle    |  72 | Male   | 38 Rowland Circle     | (555)465446456 | pmcgonigle10@mashable.com        | Database Administrator I       | Argentina     | Universidad Argentina "John F. Kennedy"                        | Portuguese | f          | t            |    102 |     99
        38 | Hedy       | Erickssen    |  53 | Female | 9953 Heffernan Plaza  | (574) 4619363  | hericksseny@live.com             |                                | Peru          | Universidad Senor de Sipan                                     | English    | t          | t            |    118 |     98
        32 | Flint      | Brownjohn    |  59 | Male   | 1205 Huxley Hill      | (646) 5148628  | fbrownjohns@chron.com            | Administrative Officer         | China         | Shanghai Lida Polytechnic Institute                            | English    | f          | t            |    184 |     96
        10 | Eamon      | Cheeseman    |  58 | Male   | 03 Ridgeview Way      | (973) 3844019  | echeeseman6@statcounter.com      | Health Coach III               | Estonia       | Estonian Academy of Music and Theatre                          | chinese    | t          | t            |    207 |     63
        41 | Karlyn     | Pankhurst.   |  36 | Female | 250 Springs Terrace   | (569) 9709310  | kpankhurst11@cargocollective.com | Safety Technician I            | Finland       | Central Ostrobothnia University of Applied Sciences            | Kazakh     | t          | f            |    168 |     82
        42 | Alwyn      | Kelwaybamber |  67 | Male   | 13673 Cody Alley      | (612) 9321633  | akelwaybamber12@github.io        | Cost Accountant                | Poland        | Silesian Academy of Medicine in Katowice                       | Amharic    | f          | f            |    152 |     82
        43 | Read       | Bottle       |  20 | Male   | 4131 Nevada Alley     | (294) 1763810  | rbottle13@usda.gov               | VP Marketing                   | Colombia      | Universidad Santiago de Cali                                   | Aymara     | t          | t            |    204 |    115
         4 | Lauritz    | Whatsize     |  49 | Male   | Гражданская 119       | (949) 9383169  | gggjjj22@gmail.com               | Analytic Engineer              | Iran          | Yazd Medical University                                        | Kazakh     | f          | f            |    109 |    120
(31 ёЄЁюър)


postgres3=# select*from people where weight >80 and is_married is true;
 person_id | first_name | last_name  | age | gender |       address        | phone_number  |              email               |           occupation           |  nationality  |                      education                      |  language  | is_married | has_children | height | weight
-----------+------------+------------+-----+--------+----------------------+---------------+----------------------------------+--------------------------------+---------------+-----------------------------------------------------+------------+------------+--------------+--------+--------
         6 | Loralyn    | Skelhorn   |  71 | Female | 45 Arizona Parkway   | (213) 8925684 | lskelhorn2@istockphoto.com       | Assistant Professor            | Indonesia     | Universitas 17 Agustus 1945 Banyuwangi              | Catalan    | t          | t            |    155 |    117
         8 | Edwin      | Simeonov   |  25 | Male   | 889 Rieder Terrace   | (227) 6305063 | esimeonov4@webmd.com             | Operator                       | China         | Jiangsu University of Science and Technology        | Albanian   | t          | f            |    105 |     84
        16 | Osmond     | Furness    |  44 | Male   | 903 Oriole Lane      | (869) 9383143 | ofurnessc@dedecms.com            | Developer II                   | China         | Inner Mongolia Normal University                    | Kannada    | t          | f            |    143 |    119
        17 | Maybelle   | Dain       |  44 | Female | 71473 Tomscot Plaza  | (133) 9148333 | mdaind@g.co                      | Human Resources Manager        | China         | Huanghe Science & Technology University             | Mongolian  | t          | t            |    111 |    105
        18 | Zacharia   | Gent       |  45 | Male   | 5 Talisman Park      | (231) 8792421 | zgente@posterous.com             | Dental Hygienist               | Indonesia     | Universitas Slamet Riyadi Surakarta                 | Belarusian | t          | f            |    164 |     96
        20 | Arlyn      | Karlsen    |  64 | Female | 8 Aberg Trail        | (194) 8557201 | akarlseng@house.gov              | Payment Adjustment Coordinator | Japan         | Nippon Medical School                               | Estonian   | t          | f            |    166 |    103
        24 | Brooks     | Fiddyment  |  58 | Female | 36823 Rigney Alley   | (502) 1778971 | bfiddymentk@ibm.com              | Recruiting Manager             | United States | Washington College                                  | Polish     | t          | t            |    170 |    105
        26 | Zandra     | Lodder     |  32 | Female | 835 Buhler Trail     | (418) 5306885 | zlodderm@admin.ch                | Financial Advisor              | Belarus       | Minsk Institute of Management                       | Swahili    | t          | f            |    142 |     84
        38 | Hedy       | Erickssen  |  53 | Female | 9953 Heffernan Plaza | (574) 4619363 | hericksseny@live.com             |                                | Peru          | Universidad Senor de Sipan                          | English    | t          | t            |    118 |     98
        41 | Karlyn     | Pankhurst. |  36 | Female | 250 Springs Terrace  | (569) 9709310 | kpankhurst11@cargocollective.com | Safety Technician I            | Finland       | Central Ostrobothnia University of Applied Sciences | Kazakh     | t          | f            |    168 |     82
        43 | Read       | Bottle     |  20 | Male   | 4131 Nevada Alley    | (294) 1763810 | rbottle13@usda.gov               | VP Marketing                   | Colombia      | Universidad Santiago de Cali                        | Aymara     | t          | t            |    204 |    115
(11 ёЄЁюъ)


postgres3=# select*from people order by age;
 person_id | first_name |  last_name   | age | gender |        address         |  phone_number  |              email               |           occupation           |   nationality    |                            education                            |  language   | is_married | has_children | height | weight
-----------+------------+--------------+-----+--------+------------------------+----------------+----------------------------------+--------------------------------+------------------+-----------------------------------------------------------------+-------------+------------+--------------+--------+--------
         5 | Etta       | Joules       |  15 | Female | 1 Little Fleur Circle  | (747) 6895499  | ejoules1@weather.com             | Structural Engineer            | Albania          | Polytechnic University of Tirane                                | Malay       | t          | t            |    106 |     59
        15 | Hymie      | Stringfellow |  18 | Male   | 623 Eggendart Crossing | (286) 9427568  | hstringfellowb@state.tx.us       | Research Assistant III         | Philippines      | University of the East, Ramon Magsaysay Memorial Medical Center | Kyrgyz      | f          | f            |    190 |     62
        43 | Read       | Bottle       |  20 | Male   | 4131 Nevada Alley      | (294) 1763810  | rbottle13@usda.gov               | VP Marketing                   | Colombia         | Universidad Santiago de Cali                                    | Aymara      | t          | t            |    204 |    115
        22 | Neddie     | Berkley      |  23 | Male   | 18 Thackeray Road      | (837) 5101009  | nberkleyi@qq.com                 | Software Test Engineer II      | Philippines      | Central Philippine University                                   | Dutch       | f          | t            |    205 |     99
        13 | Latisha    | Ivanishin    |  25 | Female | 2 Colorado Crossing    | (873) 3919592  | livanishin9@g.co                 | Nuclear Power Engineer         | Sweden           | Royal lnstitute of Technology                                   | Arabic      | f          | f            |    123 |    102
         8 | Edwin      | Simeonov     |  25 | Male   | 889 Rieder Terrace     | (227) 6305063  | esimeonov4@webmd.com             | Operator                       | China            | Jiangsu University of Science and Technology                    | Albanian    | t          | f            |    105 |     84
         3 | Mike       | Meyers       |  27 | M      | baitik-baatyr str 48   | +996700285696  | mike@gmail.com                   | ceo of company                 | english          | master degree                                                   | english     | f          | f            |    1.8 |   80.2
        23 | Johannes   | Daughton     |  29 | Male   | 37 Acker Place         | (526) 8118211  | jdaughtonj@mac.com               | Electrical Engineer            | China            | Guizhou Normal University                                       | Bislama     | f          | t            |    218 |     73
        26 | Zandra     | Lodder       |  32 | Female | 835 Buhler Trail       | (418) 5306885  | zlodderm@admin.ch                | Financial Advisor              | Belarus          | Minsk Institute of Management                                   | Swahili     | t          | f            |    142 |     84
        14 | Rollie     | Arden        |  33 | Male   | 46 Express Parkway     | (384) 4353937  | rardena@e-recht24.de             | Software Test Engineer III     | Iran             | Isfahan University                                              | Hindi       | t          | f            |    108 |     52
         2 | Leo        | Messi        |  35 | M      | aitmatova str 57       | +996708456378  | leo@gmail.com                    | footballer                     | argentinian      | master degree                                                   | spanish     | t          | t            |   1.69 |     72
        27 | Redford    | Mussett      |  35 | Male   | 9382 Hayes Avenue      | (363) 2023845  | rmussettn@dion.ne.jp             | General Manager                | Saint Barthelemy | The College of The Bahamas                                      | chinese     | f          | f            |    179 |     79
        41 | Karlyn     | Pankhurst.   |  36 | Female | 250 Springs Terrace    | (569) 9709310  | kpankhurst11@cargocollective.com | Safety Technician I            | Finland          | Central Ostrobothnia University of Applied Sciences             | Kazakh      | t          | f            |    168 |     82
        37 | Isahella   | Antonazzi    |  44 | Female | 8248 Fulton Lane       | (898) 9762728  | iantonazzix@ft.com               | Project Manager                | Netherlands      | Utrecht University                                              | Amharic     | f          | f            |    106 |    110
        16 | Osmond     | Furness      |  44 | Male   | 903 Oriole Lane        | (869) 9383143  | ofurnessc@dedecms.com            | Developer II                   | China            | Inner Mongolia Normal University                                | Kannada     | t          | f            |    143 |    119
        17 | Maybelle   | Dain         |  44 | Female | 71473 Tomscot Plaza    | (133) 9148333  | mdaind@g.co                      | Human Resources Manager        | China            | Huanghe Science & Technology University                         | Mongolian   | t          | t            |    111 |    105
        18 | Zacharia   | Gent         |  45 | Male   | 5 Talisman Park        | (231) 8792421  | zgente@posterous.com             | Dental Hygienist               | Indonesia        | Universitas Slamet Riyadi Surakarta                             | Belarusian  | t          | f            |    164 |     96
        29 | Clive      | Vearnals     |  46 | Male   | 56 Sheridan Plaza      | (523) 1555191  | cvearnalsp@accuweather.com       | Administrative Assistant II    | Indonesia        | Universitas Tarumanagara                                        | Tok Pisin   | f          | t            |    126 |     54
        30 | Wells      | Liles        |  47 | Male   | 72671 Claremont Place  | (455) 1261507  | wlilesq@artisteer.com            | Dental Hygienist               | Brazil           | Universidade Catolica de Salvador                               | Telugu      | t          | f            |    181 |     75
        12 | Wilow      | Giannassi    |  48 | Female | 354 Reindahl Hill      | (640) 7050043  | wgiannassi8@google.fr            | Desktop Support Technician     | Ireland          | Dublin Institute for Advanced Studies                           | Polish      | f          | f            |    147 |     85
         4 | Lauritz    | Whatsize     |  49 | Male   | Гражданская 119        | (949) 9383169  | gggjjj22@gmail.com               | Analytic Engineer              | Iran             | Yazd Medical University                                         | Kazakh      | f          | f            |    109 |    120
        35 | Leif       | Tingly       |  51 | Male   | 2407 Nevada Junction   | (596) 4347850  | ltinglyv@wikipedia.org           | Associate Professor            | Philippines      | Misamis University                                              | Aymara      | t          | f            |    164 |     43
        19 | Darsey     | McGivena     |  51 | Female | 799 Sommers Alley      | (303) 7093269  | dmcgivenaf@salon.com             | Budget/Accounting Analyst I    | Philippines      | Wesleyan University Philippines                                 | Malayalam   | f          | f            |    152 |     93
        25 | Cally      | Sowthcote    |  52 | Female | 0 Hintze Park          | (880) 6837178  | csowthcotel@yandex.ru            | Clinical Specialist            | Brazil           | Universidade do Rio Grande                                      | Lithuanian  | f          | t            |    152 |     41
        38 | Hedy       | Erickssen    |  53 | Female | 9953 Heffernan Plaza   | (574) 4619363  | hericksseny@live.com             |                                | Peru             | Universidad Senor de Sipan                                      | English     | t          | t            |    118 |     98
         7 | Fawne      | Andrews      |  54 | Female | 365 Hansons Avenue     | (755) 9285401  | fandrews3@a8.net                 | VP Product Management          | France           | Ecole Polytechnique Marseille                                   | Montenegrin | f          | t            |    159 |     75
        34 | Layla      | deKnevet     |  54 | Female | 9 Green Ridge Circle   | (515) 6378757  | ldeknevetu@ted.com               | Registered Nurse               | Vietnam          | Tay Nguyen University                                           | Lao         | f          | f            |    191 |     89
        31 | Kit        | Lillgard     |  54 | Male   | 72061 Amoth Park       | (953) 6837652  | klillgardr@seesaa.net            | Registered Nurse               | Bulgaria         | Medical University Pleven                                       | Assamese    | f          | t            |    208 |     58
        24 | Brooks     | Fiddyment    |  58 | Female | 36823 Rigney Alley     | (502) 1778971  | bfiddymentk@ibm.com              | Recruiting Manager             | United States    | Washington College                                              | Polish      | t          | t            |    170 |    105
        10 | Eamon      | Cheeseman    |  58 | Male   | 03 Ridgeview Way       | (973) 3844019  | echeeseman6@statcounter.com      | Health Coach III               | Estonia          | Estonian Academy of Music and Theatre                           | chinese     | t          | t            |    207 |     63
        32 | Flint      | Brownjohn    |  59 | Male   | 1205 Huxley Hill       | (646) 5148628  | fbrownjohns@chron.com            | Administrative Officer         | China            | Shanghai Lida Polytechnic Institute                             | English     | f          | t            |    184 |     96
         9 | Ignace     | Curnnokk     |  60 | Male   | 0 Center Parkway       | (551) 5800839  | icurnnokk5@meetup.com            | Programmer II                  | Ukraine          | Ivano-Frankivsk National University of Oli and Gas              | Swahili     | f          | f            |    202 |    103
        28 | Abner      | McClinton    |  60 | Male   | 8360 Emmet Center      | (169) 9535987  | amcclintono@seattletimes.com     | Human Resources Assistant I    | China            | Chongqing Normal University Foreign Trade and Business College  | Indonesian  | t          | t            |    132 |     44
        39 | Ermina     | Pharo        |  63 | Female | 9 Pawling Terrace      | (866) 1897071  | epharoz@hc360.com                | Chief Design Engineer          | Greece           | Aristotle University of Thessaloniki                            | Estonian    | f          | t            |    202 |     71
        20 | Arlyn      | Karlsen      |  64 | Female | 8 Aberg Trail          | (194) 8557201  | akarlseng@house.gov              | Payment Adjustment Coordinator | Japan            | Nippon Medical School                                           | Estonian    | t          | f            |    166 |    103
        21 | Aileen     | Gaishson     |  66 | Female | 9100 Bayside Pass      | (915) 3753279  | agaishsonh@wikia.com             | VP Accounting                  | Israel           | Russell Berrie Nanotechnology Institute                         | Hungarian   | f          | f            |    114 |     52
        42 | Alwyn      | Kelwaybamber |  67 | Male   | 13673 Cody Alley       | (612) 9321633  | akelwaybamber12@github.io        | Cost Accountant                | Poland           | Silesian Academy of Medicine in Katowice                        | Amharic     | f          | f            |    152 |     82
        36 | Cash       | Esilmon      |  69 | Male   | 531 Bobwhite Road      | (275) 1440835  | cesilmonw@google.it              | VP Product Management          | China            | South China Construction University                             | Dzongkha    | f          | f            |    125 |     55
         6 | Loralyn    | Skelhorn     |  71 | Female | 45 Arizona Parkway     | (213) 8925684  | lskelhorn2@istockphoto.com       | Assistant Professor            | Indonesia        | Universitas 17 Agustus 1945 Banyuwangi                          | Catalan     | t          | t            |    155 |    117
        40 | Putnam     | McGonigle    |  72 | Male   | 38 Rowland Circle      | (555)465446456 | pmcgonigle10@mashable.com        | Database Administrator I       | Argentina        | Universidad Argentina "John F. Kennedy"                         | Portuguese  | f          | t            |    102 |     99
        11 | Addi       | Dwelling     |  74 | Female | 47 Declaration Pass    | (278) 4368780  | adwelling7@eventbrite.com        | Accounting Assistant II        | China            | China University of Mining Technology - Beijing                 | Hiri Motu   | f          | t            |    122 |     96
        33 | Jorie      | Jay          |  79 | Female | 70688 Stuart Hill      | (649) 7582538  | jjayt@skype.com                  | VP Product Management          | Azerbaijan       | Academy of Public Administration                                | Maori       | f          | t            |    182 |     42
(42 ёЄЁюъш)


postgres3=#
postgres3=# select *from people order by age and order by height;
ОШИБКА:  ошибка синтаксиса (примерное положение: "order")
СТРОКА 1: select *from people order by age and order by height;
                                               ^
postgres3=# select first_name distinct from people;
 distinct
----------
 Leo
 Mike
 Etta
 Loralyn
 Fawne
 Edwin
 Ignace
 Addi
 Wilow
 Latisha
 Rollie
 Hymie
 Osmond
 Maybelle
 Zacharia
 Darsey
 Arlyn
 Aileen
 Neddie
 Johannes
 Brooks
 Cally
 Zandra
 Abner
 Clive
 Wells
 Kit
 Jorie
 Layla
 Leif
 Cash
 Isahella
 Ermina
 Putnam
 Hedy
 Flint
 Redford
 Eamon
 Karlyn
 Alwyn
 Read
 Lauritz
(42 ёЄЁюъш)


postgres3=#
postgres3=#
postgres3=#
postgres3=#
postgres3=# select *from people where nationality is 'United States' and 'Canada';
ОШИБКА:  ошибка синтаксиса (примерное положение: "'United States'")
СТРОКА 1: select *from people where nationality is 'United States' and...
                                                   ^
postgres3=# select *from people where nationality = 'United States';
 person_id | first_name | last_name | age | gender |      address       | phone_number  |        email        |     occupation     |  nationality  |     education      | language | is_married | has_children | height | weight
-----------+------------+-----------+-----+--------+--------------------+---------------+---------------------+--------------------+---------------+--------------------+----------+------------+--------------+--------+--------
        24 | Brooks     | Fiddyment |  58 | Female | 36823 Rigney Alley | (502) 1778971 | bfiddymentk@ibm.com | Recruiting Manager | United States | Washington College | Polish   | t          | t            |    170 |    105
(1 ёЄЁюър)


postgres3=# select *from people where nationality ="United States' and nationality 'Canada';
postgres3"# select *from people where nationality in ('United States','Canada');
postgres3"# select *from people where nationality ='United States' or nationality 'Canada';
postgres3"# select *from people where nationality ='United States' or nationality = 'Canada';
postgres3"# update people set nationality = 'Canada' where person_id = 36;
postgres3"# select*people where person_id = 36;
postgres3"# select*from people where person_id = 36;
postgres3"# select *from people where person_id = 36;
postgres3"# select *from people where person_id = 36;
postgres3"# select *from people where person_id = 36;
postgres3"# select *from people where person_id = 36;
postgres3"# select*from people;
postgres3"# select*from people where person_id = 36;
postgres3"# update people set nationality = 'Canada' where person_id = 36;

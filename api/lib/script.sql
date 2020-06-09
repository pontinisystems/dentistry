INSERT INTO public.address
(city, neighborhood, street, "number")
VALUES('Blumenau', 'Victor Konder', 'Max Hering', '472');

select * from address a 



INSERT INTO public.clinic
(cnpj, "name", description, address_id)
VALUES('00856170000172', 'OdontoPrev', '', 2);


INSERT INTO public.address
(city, neighborhood, street, "number")
VALUES('Blumenau', 'Victor Konder', 'Max Hering', '472');

select * from address a 

INSERT INTO public.people
(numberphone, fullname, dateofbirth, gender, address_id)
VALUES( '47996561783', 'Ewerton Pontini', '05/11/1995', 'Masculino', 2);


INSERT INTO public.user_access 
(login, "password")
VALUES('ewerton.pontini@gmail.com', '123');

select * from login l 

select * from user_person l 

INSERT INTO doctor
(cro, people_id, user_id)
VALUES('123', 1, 1);

select * from clinic
select * from doctor


INSERT INTO work_invitation
(title, message, isactive, doctormodel_id, clinicmodel_id)
VALUES('OdontoPrev', 'Olá, você gostaria de fazer parte da equipe ?', true, 1, 5);




DROP SCHEMA public CASCADE;
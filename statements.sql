-- Ejercicio 1: Seleccionar todos los usuarios y sus lenguajes asociados.
-- Tu respuesta aquí
select id_usuario, lenguaje from usuarios_lenguajes;

-- Ejercicio 2: Contar cuántos usuarios hay en total.
-- Tu respuesta aquí
SELECT COUNT (*) AS TOTAL_USUARIOS FROM usuarios_lenguajes;

-- Ejercicio 3: Seleccionar los usuarios mayores de 30 años.
-- Tu respuesta aquí
select * from usuarios_lenguajes where edad >30;

-- Ejercicio 4: Contar cuántos usuarios saben JavaScript.
-- Tu respuesta aquí
select * from usuarios_lenguajes where lenguaje like 'JavaScript';

-- Ejercicio 5 OPCION 2: Seleccionar los usuarios que tienen 28 años. 
-- Tu respuesta aquí
select * from usuarios_lenguajes where edad =28;

-- Ejercicio 6: Encontrar el usuario con el email 'juan.gomez@example.com'.
-- Tu respuesta aquí
select * from usuarios_lenguajes where email like 'juan.gomez@example.com';


-- Ejercicio 7: Seleccionar los usuarios que saben Java y tienen menos de 25 años.
-- Tu respuesta aquí
select * from usuarios_lenguajes where lenguaje like 'Java' AND edad <25;


-- Ejercicio 8 OPCION 2: Contar cuántos usuarios con edades diferentes saben el lenguaje 'Java'.
-- Tu respuesta aquí
select count (distinct edad) from usuarios_lenguajes where lenguaje like 'Java';

-- Ejercicio 9: Seleccionar los usuarios que no saben ningún lenguaje.
-- Tu respuesta aquí

select * from usuarios_lenguajes where lenguaje = null;

-- Ejercicio 10: Encontrar el nombre y edad del usuario más joven.
-- Tu respuesta aquí
select nombre, edad from usuarios_lenguajes where (select min (edad) from usuarios_lenguajes);

-- Ejercicio 11: Seleccionar los usuarios y sus edades ordenados por edad de forma descendente.
-- Tu respuesta aquí
select * from usuarios_lenguajes where edad order by desc;

-- Ejercicio 12: Contar cuántos usuarios tienen más de 28 años.
-- Tu respuesta aquí
select count (*) from usuarios_lenguajes where edad > 28;

-- Ejercicio 13: Seleccionar los usuarios cuyo apellido contiene la letra 'a'.
-- Tu respuesta aquí
select * from usuarios_lenguajes where apellido like '%a%';

-- Ejercicio 14: Encontrar el lenguaje más popular entre los usuarios menores de 30 años.
-- Tu respuesta aquí
select lenguaje, count (lenguaje) from usuarios_lenguajes where edad <30 ;

-- Ejercicio 15: Seleccionar el usuario  mayor de 25 y que sepa el lenguaje 'TypeScript'.
-- Tu respuesta aquí

select * from usuarios_lenguajes where edad >25 and lenguaje like 'Python';
-- Ejercicio 16: Contar cuántos usuarios tienen un lenguaje asociado llamado 'Python'.
-- Tu respuesta aquí
select count (*) from usuarios_lenguajes where lenguaje like 'Python';

-- Ejercicio 17: Seleccionar los usuarios y sus lenguajes asociados, si tienen alguno, ordenados por nombre de usuario.
-- Tu respuesta aquí
select * from usuarios_lenguajes where lenguaje is not null and order by nombre  desc;

-- Ejercicio 18: Encontrar los usuario con el email que contiene la palabra 'example'.
-- Tu respuesta aquí

select *from usuarios_lenguajes where email like '%example%';
-- Ejercicio 19: Seleccionar los usuarios que saben al menos un lenguaje y tienen una edad entre 25 y 35 años.
-- Tu respuesta aquí
select * from usuarios_lenguajes where lenguaje = '' and edad 

-- Ejercicio 20: Contar cuántos usuarios tienen un lenguaje asociado llamado 'CSS' y tienen menos de 30 años.
-- Tu respuesta aquí

select * from usuarios_lenguajes where lenguaje = 'CSS' and edad < 30;
-- Ejercicio 21: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la cantidad de lenguajes que tienen.
-- Tu respuesta aquí
select * from usuarios_lenguajes where lenga

-- Ejercicio 22: Encontrar el lenguaje con más caracteres.
-- Tu respuesta aquí
select lenguaje from usuarios_lenguajes ORDER BY LENGTH(lenguaje) DESC LIMIT 1;


-- Ejercicio 23: Seleccionar los usuarios y mostrar la concatenación de su nombre y apellido.
-- Tu respuesta aquí
select concat (nombre, ' ', apellido) AS nombre_completo from usuarios_lenguajes;


-- Ejercicio 24: Contar cuántos lenguajes diferentes conocen los usuarios mayores de 25 años. 
-- Tu respuesta aquí
select count (distinct lenguaje) AS total_lenguajes from usuarios_lenguajes where edad >25;

-- Ejercicio 25: Seleccionar los usuarios que tienen exactamente la misma edad.
-- Tu respuesta aquí

-- Ejercicio 26: Encontrar el usuario con el lenguaje con mayor número de carácteres y que tenga una edad menor de 30 años. 
-- Tu respuesta aquí

select * from usuarios_lenguajes where edad <30 and LENGTH (lenguaje) ORDER BY lenguaje DESC LIMIT 1;
-- Ejercicio 27: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar sus emails.
-- Tu respuesta aquí
select email from usuarios_lenguajes;

-- Ejercicio 28: Contar cuántos usuarios tienen un apellido que comienza con la letra 'G'.
-- Tu respuesta aquí
select * from usuarios_lenguajes where apellido like 'G%';

-- Ejercicio 29: Seleccionar los usuarios que tienen lenguajes que empiecen por 'J' y mostrar solo el que tiene menos caracteres. 
-- Tu respuesta aquí
select * from usuarios_lenguajes where lenguaje like 'J%' and LENGTH(lenguaje) <4;


-- Ejercicio 30: Encontrar el usuario con edad mayor a 30 y que sabe el lenguaje con menos caracteres.
-- Tu respuesta aquí
select * from usuarios_lenguajes where edad >30 and LENGTH (lenguaje) ORDER BY lenguaje asc LIMIT 1;


-- Ejercicio 31: Seleccionar los usuarios que saben al menos un lenguaje y ordenarlos por nombre de lenguaje. 
-- Tu respuesta aquí
select * from usuarios_lenguajes order by lenguaje asc;

-- Ejercicio 32: Contar cuántos usuarios tienen una edad entre 20 y 25 años y saben al menos un lenguaje. 
-- Tu respuesta aquí
select count  (*) from usuarios_lenguajes where edad between 20 and 25 ;


-- Ejercicio 33: Seleccionar los usuarios que no tienen un lenguaje asociado llamado 'SQL'.
-- Tu respuesta aquí
select*from usuarios_lenguajes where lenguaje != 'SQL';

-- Ejercicio 34: Encontrar el lenguaje con más caracteres entre los usuarios que tienen al menos 30 años.
-- Tu respuesta aquí
select * from usuarios_lenguajes where edad >=30 and LENGTH(lenguaje) order by lenguaje desc limit 1;


-- Ejercicio 35: Seleccionar los usuarios y mostrar la diferencia entre su edad y la edad promedio de todos los usuarios
-- Tu respuesta aquí
select nombre, edad, (select AVG(edad) from usuarios_lenguajes) AS edad_promedio from usuarios_lenguajes;

-- Ejercicio 36: Contar cuántos usuarios tienen un lenguaje asociado que contiene la palabra 'Script'.
-- Tu respuesta aquí
SELECT COUNT(*) FROM usuarios_lenguajes  where lenguaje like '%Script%';


-- Ejercicio 37: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la longitud de su nombre. 
-- Tu respuesta aquí
select nombre, LENGTH(nombre) as longitud from usuarios_lenguajes;
-- Ejercicio 38: Encontrar el lenguaje del usuario creado más tarde. 
-- Tu respuesta aquí


-- Ejercicio 39: Seleccionar los usuarios y mostrar la suma de sus edades. 
-- Tu respuesta aquí
select sum(edad) as SUMA from usuarios_lenguajes;

-- Ejercicio 40: Contar cuántos usuarios tienen un lenguaje asociado que comienza con la letra 'P' y tienen menos de 28 años.
-- Tu respuesta aquí

SELECT COUNT(*) FROM usuarios_lenguajes  where lenguaje like 'P%' and edad<28;

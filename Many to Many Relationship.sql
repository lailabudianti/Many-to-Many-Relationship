USE sakila;
SELECT a.actor_id, a.first_name, a.last_name, 
        fa.film_id, 
        f.title, f.rating, f.rental_rate as price, f.length as duration, 
        c.name as category
FROM actor AS a #n
JOIN film_actor AS fa ON a.actor_id = fa.actor_id #1
JOIN film AS f ON fa.film_id=f.film_id #n
JOIN film_category AS fc on fc.film_id=f.film_id #1
JOIN category AS c ON c.category_id=fc.category_id #n
ORDER BY film_id;



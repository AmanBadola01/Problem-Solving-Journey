-- write your code here

update Artworks
set price = 1750.0
where art_id = 3;

update Artworks
set is_available = 'False'
where art_id = 2;

delete from Artworks
where year_created < 1950;
-- write your code here

alter table StartupPitch
add pitch_date date;

update StartupPitch 
set pitch_date = '2024-05-15'
where pitch_id = 1;

update StartupPitch
set pitch_date = '2024-05-15'
where pitch_id = 2;

update StartupPitch 
set pitch_date = '2024-05-16'
where pitch_id= 3;
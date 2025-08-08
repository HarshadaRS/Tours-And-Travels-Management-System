1) SUM()

select sum(BAmount) as total_revenue from Booking

2) MIN()

select min(BAmount) as min_amount from Booking 

3) MAX()

select max(Esalary) from Employee

4)AVG()

select avg(TCOST) average_tour_cost from Tour

5)COUNT()

select count(*) as total_bookings from Booking

6)GROUP BY, HAVING

select CID,count(D_ID) as total_destination
from Destination
group by CID
having count(D_ID)>1

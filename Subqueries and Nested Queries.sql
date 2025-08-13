---------------------------------------------------------------------------------------------------------------------------------------

select * from Booking
where BAmount >all(select PAmount from Payment)

---------------------------------------------------------------------------------------------------------------------------------------

select TNAME,(select count(*) from Booking b 
              where b.TID=t.TID) as TotalBookings
from Tour t              
-----------------------------------------------------------------------------------------------------------------------------------------

select * from Tour
where TID in (select TID from Booking 
              where CID=701)
-----------------------------------------------------------------------------------------------------------------------------------------

select * from Hotel h
where exists (select * from Room r
              where r.HID=h.HID
              and RCOST>5000)
-----------------------------------------------------------------------------------------------------------------------------------------


select * from Customer c
where exists (select * from Review r
               where r.CID=c.CID)
------------------------------------------------------------------------------------------------------------------------------------------

select TID, TNAME,
                  (select count(distinct CID)
                   from Booking b
                   where b.TID=t.TID) as TotalCustomers
from Tour t;                   

-----------------------------------------------------------------------------------------------------------------------------------------

select D_ID,D_NAME,
                  ( select max(t.TCOST)
                    from Tour_Destination td
                    join Tour t
                    on td.TID=t.TID
                    where td.D_ID=d.D_ID) as MaxTourPrice
from Destination d                    

----------------------------------------------------------------------------------------------------------------------------------------------



-------------------------------------------------------------------------------------------------------------------------------

_INNER JOIN_

select c.CID,c.CNAME,b.BID,b.TID
from Customer c
inner join Booking b
on c.CID=b.CID

-----------------------------------------------------------------------------------------------------------------------------

_NATURAL JOIN_

select * from Tour
natural join Destination

-----------------------------------------------------------------------------------------------------------------------------

_USING CLAUSE JOIN_

select DID,d.DDpartment,e.EFIRST_NAME
from Designation d
join  Employee e
using(DID)

--------------------------------------------------------------------------------------------------------------------------------

_ON CLAUSE JOIN_

select D.D_Name,count(C.CID) as customer_count
from Customer C 
join Destination D
on(C.CID=D.CID)
group by D.D_Name
 
-----------------------------------------------------------------------------------------------------------------------------------

_SELF JOIN_

select t1.TID as tour_id_1, t1.TNAME as tour_name_2,
        t2.TID as tour_id_2,t2.TNAME as tour_name_2,
        t1.TDURATION
from Tour t1
join Tour t2
on t1.TDURATION=t2.TDURATION
and t1.TID<>t2.TID
order by t1.TDURATION

-----------------------------------------------------------------------------------------------------------------------------------

_NON-EQUI JOIN_

select c.CID,c.CNAME,c.T_ID,t.T_TYPE,t.T_COST
from Customer c
join Transport t
on c.T_ID=t.T_ID
and t.T_COST >1000

------------------------------------------------------------------------------------------------------------------------------------

_RIGHT OUTER JOIN_

select C.CID,C.CNAME,D.D_ID,D.D_Name
from Destination D right join Customer C
on D.CID=C.CID

-------------------------------------------------------------------------------------------------------------------------------------

_LEFT OUTER JOIN_

SELECT h.HID,h.HNAME,r.RID
from Hotel h
left join Room r
on h.HID=r.HID

-----------------------------------------------------------------------------------------------------------------------------------

_FULL OUTER JOIN_

select c.CNAME,b.BID
from Customer c
full outer join Booking b
on c.CID=b.CID

---------------------------------------------------------------------------------------------------------------------------------------


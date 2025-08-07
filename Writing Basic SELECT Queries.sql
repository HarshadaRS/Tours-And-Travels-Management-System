1)
select TCOST from Tour

2)
select H.* from Hotel H

3)
select CNAME from Customer

4)
select * from Destination
where D_NAME like '%Kedarnath%' and D_ID between 905 and 915

5)
select EID,EFIRST_NAME,ELAST_NAME,ESALARY
from Employee
order by EFIRST_NAME asc


6)
select BID,BStatus,BAmount,BDate
from Booking 
where BStatus like '%Confirmed%'

7)
select PID,PMethod,PStatus
from Payment
where PMethod='Credit Card' or PStatus like'Unpaid'

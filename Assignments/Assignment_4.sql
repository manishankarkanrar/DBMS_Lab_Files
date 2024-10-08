--Table Update and Alter

--QUESTION NUMBER : 1 
UPDATE ROOM
SET RATE=1.1*RATE;

--QUESTION NUMBER : 2
UPDATE HOTEL
SET HOTELNAME='THE TAJ BENGAL'
WHERE HOTELNAME='TAJ BENGAL';

--QUESTION NUMBER : 3
ALTER TABLE HOTEL
MODIFY CITY DEFAULT 'SALT LAKE';

--QUESTION NUMBER : 4
UPDATE BOOKING
SET DATEFROM='27-JAN-2014', DATETO='07-FEB-2014'
WHERE (HOTELNO='H001' AND GUESTNO='G001') ;

--QUESTION NUMBER : 5
ALTER TABLE BOOKING
ADD noOfGuest NUMBER(1);

--QUESTION NUMBER : 6
ALTER TABLE BOOKING
MODIFY noOfGuest NUMBER(2);

--QUESTION NUMBER : 7
ALTER TABLE BOOKING
DROP COLUMN noOfGuest;

--QUESTION NUMBER : 8
DROP TABLE CORPORATES;


--Aggregate Functions

--QUESTION NUMBER : 9
SELECT COUNT(*) AS "TOTAL_HOTELS_COUNT"
FROM HOTEL;

--QUESTION NUMBER : 10
SELECT CITY, COUNT(*)
FROM HOTEL
GROUP BY CITY;

--QUESTION NUMBER : 11
SELECT COUNT(*) AS "5_STAR_HOTEL"
FROM HOTEL
WHERE (STATUS=5 AND CITY='KOLKATA');

--QUESTION NUMBER : 12
SELECT MIN(RATE) AS "NAC_MIN_RATE"
FROM ROOM 
WHERE (TYPE='NAC' AND HOTELNO='H003');

--QUESTION NUMBER : 13
SELECT HOTELNO, AVG(RATE)
FROM ROOM
GROUP BY HOTELNO;

--QUESTION NUMBER : 14
SELECT R.TYPE, COUNT(*) AS "TYPE_BOOKING_COUNT"
FROM BOOKING B, ROOM R
WHERE B.ROOMNO=R.ROOMNO
GROUP BY R.TYPE;

--QUESTION NUMBER : 15 
SELECT COUNT(*) AS "BOOKING_IN_FEB"
FROM BOOKING
WHERE (EXTRACT(MONTH FROM DATEFROM)=2);

--QUESTION NUMBER : 16
SELECT MAX(R.RATE), MIN(R.RATE)
FROM HOTEL H, ROOM R
WHERE (H.HOTELNO=R.HOTELNO AND H.CITY='KOLKATA');

--QUESTION NUMBER : 17
SELECT COUNT(DISTINCT HOTELNO)
FROM ROOM
WHERE (BED='SINGLE' AND TYPE='NAC' AND RATE<3000.00);

--QUESTION NUMBER : 18
SELECT SUM(RATE) AS "REVENUE_DOUBLE_AC_ROOM"
FROM ROOM
WHERE (BED='DOUBLE' AND TYPE='AC');

--QUESTION NUMBER : 19
SELECT COUNT(DISTINCT G.GUESTNO)
FROM GUEST G, BOOKING B
WHERE (B.GUESTNO=G.GUESTNO AND (EXTRACT(MONTH FROM DATEFROM)=1));



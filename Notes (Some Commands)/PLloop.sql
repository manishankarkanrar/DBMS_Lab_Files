
DECLARE
	X NUMBER:=20;
BEGIN
	WHILE X<=50 LOOP
		IF X%2==0 THEN
			DBMS_OUTPUT.PUT_LINE('VALUE OF X : '||X);
		X:=X+1;
	END LOOP;
END;
/


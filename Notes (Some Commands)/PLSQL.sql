DECLARE
	num number:=27;
BEGIN
	dbms_output.put_line('   ');
	if mod(num, 2)=0 then
	dbms_output.put_line(num||' is even number.');
	else
	dbms_output.put_line(num||' is odd number.');
	end if;
END;
/
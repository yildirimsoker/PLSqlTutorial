begin
    for i in 1..10 loop
        DBMS_OUTPUT.PUT_LINE(i);
    end loop;
end;


declare
    v_str varchar2(90) := 'yildirimsoker@gmail.com aliveli@gmail.com';
    v_char varchar2(1);
begin 
    for i in 1..length(v_str) loop
        v_char := SUBSTR(v_str, i, 1);
        if v_char <> ' ' then
            DBMS_OUTPUT.PUT_LINE(v_char);
        end if;
    end loop;
end;
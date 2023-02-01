declare
    v_status boolean := true;
begin
    if v_status then
        dbms_output.put_line('true');
    else
        dbms_output.put_line('false');
    end if;
end;
declare
    v_status nvarchar2(10) := 'k';
begin
    if v_status = 'd' then
        dbms_output.put_line('d');
    elsif v_status = 'c' then  
        dbms_output.put_line('c');
    else
        dbms_output.put_line('!d');
    end if;
end;
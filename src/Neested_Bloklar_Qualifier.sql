begin
    << disblok >> declare
        v_sehir nvarchar2(20) := 'Izmir';
    begin
        declare
            v_sehir nvarchar2(20) := 'Istanbul';
        begin
            dbms_output.put_line(disblok.v_sehir);
            dbms_output.put_line(v_sehir);
        end;
    end;
end disblok;
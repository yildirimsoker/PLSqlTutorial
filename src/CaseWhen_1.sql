
declare
    v_derece number := &derece;
    v_hava varchar2(50);
begin
    v_hava :=
        case
            when v_derece < 0 then 'Cok soguk'
            when v_derece between 1 and 15 then 'Soguk'
            when v_derece between 16 and 26 then 'Il?k'
            else 'S?cak'
        end;
        
        dbms_output.put_line(v_hava);
end;
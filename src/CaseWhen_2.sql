declare 
    v_mevsim varchar2(20) := 'Kis';
    v_hava_durumu varchar2(60);
begin
    v_hava_durumu :=
        case v_mevsim
            when 'Ilkbahar' then 'ilkbahar'
            when 'Yaz' then 'yaz'
            when 'Kis' then 'Kis'
            else 'Bu bir mevsim degil.'
        end;
        
        DBMS_OUTPUT.PUT_LINE(v_hava_durumu || ' ' || v_mevsim);
        
end;
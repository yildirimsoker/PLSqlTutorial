set SERVEROUTPUT on

declare
 type isim_type is table of varchar2(20);
 v_isimler isim_type;
begin
    v_isimler := isim_type ('Ayse', 'Yildirim', 'Kaan');
    
    v_isimler.extend;
    
    for i in v_isimler.first..v_isimler.last loop
    
        DBMS_OUTPUT.PUT_LINE(v_isimler(i));
    end loop;
end;
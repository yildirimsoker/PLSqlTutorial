Create or replace package pck_genel as
function date_diff(p_sure varchar2, p_d1 date, p_d2 date)
    return number;
    
procedure out_yaz(p_yazi varchar2);    
end pck_genel;


create or replace package body pck_genel as 

    function date_diff(p_sure varchar2, p_d1 date, p_d2 date)
    return number
    as
        v_sonuc number;
    begin
        select (p_d2 - p_d1) * decode(upper(p_sure), 'SS', 24*60*60, 'MI', 24*60, 'HH', 24, null) into v_sonuc
        from dual;
        
        return v_sonuc;
    end;
    
    procedure out_yaz(p_yazi varchar2)
    as
    begin
        DBMS_OUTPUT.PUT_LINE(p_yazi);
    end;
    
end pck_genel;

select pck_genel.date_diff('SS', sysdate, sysdate + 10) from dual;

begin
    pck_genel.out_yaz('yildirim soker');
end;

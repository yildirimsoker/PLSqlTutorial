create or replace procedure sp_personel_bilgi_return
(
    p_personel_id number,
    p_ad out varchar2,
    p_maas out number
)
is
begin
    select ad ,maas into p_ad, p_maas from personel
    where personel_id = p_personel_id;
end;



declare
    v_ad  varchar2(50);
    v_maas number;
begin
    sp_personel_bilgi_return(5061, v_ad, v_maas);
    DBMS_OUTPUT.PUT_LINE(v_ad || ' ' || v_maas);

end;
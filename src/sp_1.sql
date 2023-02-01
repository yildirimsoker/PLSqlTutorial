create or replace procedure sp_karesini_al
is
    v_sonuc number;
begin
    for i in 1..10 loop
        v_sonuc := i**2;
        DBMS_OUTPUT.PUT_LINE(i || ' karesi: ' || v_sonuc);
    end loop;
end;


BEGIN
  SP_KARESINI_AL();
END;

exec SP_KARESINI_AL;
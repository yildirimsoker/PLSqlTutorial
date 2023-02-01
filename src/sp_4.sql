create or replace procedure sp_konum_ekle (
    p_konum_id  konum.il_kodu%type,
    p_konum_adi konum.konum_adi%type,
    p_il_kodu   konum.il_kodu%type
)
is
begin
    insert into konum values (p_konum_id , p_konum_adi , p_il_kodu );
    commit;
end;


begin
 sp_konum_ekle(1009, 'Hatay', 23);
end;


select * from konum;
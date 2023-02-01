declare
    v_sayi1 number := 123;
    v_sayi2 number := 456;
begin
    declare
        v_carpim number;
    begin
        v_carpim := v_sayi1 * v_sayi2;
        dbms_output.put_line(v_carpim);
    end;

    declare
        v_toplam number;
    begin
        v_toplam := v_sayi1 + v_sayi2;
        dbms_output.put_line(v_toplam);
    end;

end;
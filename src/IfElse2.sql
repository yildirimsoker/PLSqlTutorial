declare
    v_pers_maas   number;
    v_max_maas    number := 5000;
    v_maas_uygun  boolean := false;
    v_personel_id personel.personel_id%type := 5005;
begin
    select
        maas
    into v_pers_maas
    from
        personel
    where
        personel_id = v_personel_id;

    if v_pers_maas < v_max_maas then
        v_maas_uygun := true;
    end if;
    if v_maas_uygun then
        dbms_output.put_line('Maas Uygun');
    else
        dbms_output.put_line('Maas Uygun Degil. Maas: ' || v_pers_maas);
    end if;
end;
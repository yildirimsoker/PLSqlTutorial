declare
    type ulke is table of varchar2(50)
    index by varchar2(5);
    
    t_ulkeler ulke;
begin
    t_ulkeler('TR') := 'Turkiye';
    t_ulkeler('UK') := 'United Kingdom';
    t_ulkeler('FR') := 'France';
    
    
    DBMS_OUTPUT.PUT_LINE(t_ulkeler('TR'));
    DBMS_OUTPUT.PUT_LINE(t_ulkeler('UK'));
    DBMS_OUTPUT.PUT_LINE(t_ulkeler('FR'));
end;


declare
    type ulke is table of varchar2(50)
    index by varchar2(5);
    
    t_ulkeler ulke;  
begin
    t_ulkeler('TR') := 'Turkiye';
    t_ulkeler('UK') := 'United Kingdom';
    t_ulkeler('FR') := 'France';
    t_ulkeler('DE') := 'Germany';
    
     DBMS_OUTPUT.PUT_LINE(t_ulkeler.first);
     DBMS_OUTPUT.PUT_LINE(t_ulkeler.last);
     DBMS_OUTPUT.PUT_LINE(t_ulkeler.count);
     DBMS_OUTPUT.PUT_LINE(t_ulkeler.prior('TR'));
     DBMS_OUTPUT.PUT_LINE(t_ulkeler.next('FR'));
end;





declare
    type ulke is table of varchar2(50)
    index by varchar2(5);
    
    t_ulkeler ulke;
    v_index varchar2(5);
begin
    t_ulkeler('TR') := 'Turkiye';
    t_ulkeler('UK') := 'United Kingdom';
    t_ulkeler('FR') := 'France';
    t_ulkeler('DE') := 'Germany';
    
    v_index := t_ulkeler.first;
    
    while v_index is not null loop
        DBMS_OUTPUT.PUT_LINE(v_index || '-' || t_ulkeler(v_index));
        v_index := t_ulkeler.next(v_index);
        
    end loop;
    
end;






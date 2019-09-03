SET SERVEROUTPUT ON
ACCEPT x PROMPT 'Enter the ZIPCODE you would like to UPDATE'
ACCEPT y PROMPT 'Enter the NEW ZIPCODE'

declare
old_zip zipcode.zip%Type;
new_zip zipcode.zip%Type;
    procedure update_zip(oz char, nz char) is
    t zipcode.zip%Type;
    e_newExists exception;
    e_oldNotExists exception;
    oz_exists number(1);
    nz_exists number(1);
    begin
        select case
            when exists(select zip from zipcode where zip=oz) then 1
            else 0
            end into oz_exists
        from dual;
        select case
            when exists(select zip from zipcode where zip=nz) then 1
            else 0
            end into nz_exists
        from dual;
        if oz_exists=1 then
            if nz_exists=1 then
                raise e_newExists;
            else
                update customers set zip=NULL where zip=oz;
                update employees set zip=NULL where zip=oz;
                update zipcode set zip=nz where zip=oz;
                update customers set zip=nz where zip is NULL;
                update employees set zip=nz where zip is NULL;
            end if;
        else
            raise e_oldNotExists;
        end if;
        dbms_output.put_line(oz||' '||nz);
        exception
            when e_newExists then
                dbms_output.put_line('The entered new zipcode already exists in the database ' || nz);
            when e_oldNotExists then
                dbms_output.put_line('The entered current zipcode does not exists in the database ' || oz);
    end;
begin
    old_zip:='&x';
    new_zip:='&y';
    update_zip(old_zip, new_zip);

end;
-- fill users table
begin
  delete from sit$user where user# like 'user%';

  for i in 1..160 loop
    insert into sit$user(
      user#,
      password,
      is_account_non_expired,
      is_account_non_locked,
      is_credentials_non_expired,
      is_enabled,
      login_name,
      first_name,
      middle_name,
      last_name
    )
    values(
      'user' || to_char(i) || '@gmail.com',
      null,
      'F', 'F', 'F', 'F', 
      'loginname' || to_char(i),
      'first_name' || to_char(i),
      'middle_name' || to_char(i),
      'last_name' || to_char(i)
    );
    
    
  end loop;
  commit;
end;
/
insert into sit$user(USER#) values(
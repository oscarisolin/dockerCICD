createuser -U postgres jenkins
createdb -U postgres -O jenkins chmap_user_management_test  
psql -U postgres -d postgres -c "alter user jenkins with password 'password';"

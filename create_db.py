import os
POSTGRESQL_VERSION = 11

os.system(r"C:\Program Files\PostgreSQL\%d\psql.exe -U postgres -f create_db.sql" % POSTGRESQL_VERSION)

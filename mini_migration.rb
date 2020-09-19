require 'sqlite3'

conn = SQLite3::Database.new "just_do.db"

conn.execute <<SQL
create table tasks(
id INTEGER PRIMARY KEY,
title TEXT,
content TEXT);
SQL

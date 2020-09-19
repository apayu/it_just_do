# require 'sqlite3'
#
# conn = SQLite3::Database.new "just_do.db"
#
# conn.execute <<SQL
# create table tasks(
# id INTEGER PRIMARY KEY,
# title TEXT,
# content TEXT);
# SQL

require 'pg'

conn = PG.connect(dbname: 'just_do')

conn.exec <<SQL
CREATE SEQUENCE users_id_seq START 1;
CREATE TABLE tasks(id bigint DEFAULT nextval('users_id_seq') PRIMARY KEY
,title character varying, content character varying);
SQL

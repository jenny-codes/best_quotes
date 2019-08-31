require 'sqlite3'

conn = SQLite3::Database.new('db/best_quotes.db')
conn.execute <<SQL
create table quote (
	id INTEGER PRIMARY KEY,
	quote VARCHAR(32000),
	attribution VARCHAR(100)
);
SQL

puts 'done'
def setup_test_database
  p "Setting up test database... "

  connection = PG.connect(dbname: 'test_database')

  connection.exec("TRUNCATE bookmarks;")
end
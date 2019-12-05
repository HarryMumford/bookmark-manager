def setup_test_database
  connection = PG.connect(dbname: 'test_database')

  connection.exec("TRUNCATE bookmarks;")
end
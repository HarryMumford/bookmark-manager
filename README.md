# Bookmark Manager

### How to set up the database

Connect to `psql` and create the `bookmark_manager` database:

```
CREATE DATABASE bookmark_manager;
```

To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

### To run the Bookmark Manager app:

```
rackup -p 1234
```

To view bookmarks, navigate to `localhost:1234/bookmarks`
To view bookmarks, navigate to `localhost:1234/bookmarks`.

### To run tests:

```
rspec
```

Specifications

1. Show a list of bookmarks

User story:

```
As a user,
So that I can easily navigate to my bookmarked websites, 
I would like to see a bookmark list.
```


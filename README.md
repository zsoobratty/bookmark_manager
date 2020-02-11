# Bookmark Manager

## <a name="Database">Database setup</a>
1. Connect to psql
2. Create databases using the psql command CREATE DATABASE for `bookmark_manager` and `bookmark_manager_test`;
3. Connect to the databases using the pqsl command \c bookmark_manager;
4. Run the SQL scripts saved in the `db/migrations` folder in the given order;
Note: To set up the testing environment, create a test database and run the psql commands for both databases.

## User requirements ##

The user requirements for this task are as follows:

* Show a list of bookmarks
* Add new bookmarks
* Delete bookmarks
* Update bookmarks
* Comment on bookmarks
* Tag bookmarks into categories
* Filter bookmarks by tag
* Users are restricted to manage only their own bookmarks

## User stories ##

The user stories based on the user requirements are as follows:
```
As a user
So that I can store my websites
I would like to be able to list my bookmarks.

As a user
So that I can save a page for later consumption, yum yum yum
I would like to add new bookmarks.

As a user
So that I can discard websites that I no longer need
I would like to delete some bookmarks.
```
## Domain Model ##

![Domain model](https://raw.githubusercontent.com/DavidStewartLDN/bookmark_manager/master/img/bookmark_manager_1.png)

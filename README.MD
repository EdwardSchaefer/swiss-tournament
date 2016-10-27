These files consist of a database for a swiss-style tournament system.
In a swiss-style tournament, each round players are paired with another
player with a record which is the same or nearly the same. The database
structures are defined in SQL. psycopg2 (Python) is used for the database
interface. The repository includes a set of functions which checks the
validity of the tournament functions. The program was developed and tested
using a virtual machine with Vagrant.

#List of files
--------------

	*tournament.py: code largely consisting of functions which operate
		perform the necessary operations for the swiss tournament
	*tournament_test.py: the included file which checks to see if
		tournament.py is operating correctly
	*tournament.pyc: compiled version of tournament.py
	*tournament.sql: contains the data structures for the database
	*README.md: this readme file
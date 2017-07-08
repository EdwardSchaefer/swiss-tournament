These files consist of a database for a swiss-style tournament system.
In a swiss-style tournament, each round players are paired with another
player with a record which is the same or nearly the same. The database
structures are defined in SQL. psycopg2 (Python) is used for the database
interface. The repository includes a set of functions which checks the
validity of the tournament functions. The program was developed and tested
using a virtual machine with Vagrant.

#7/7/17 Update
--------------
	*Add more documentation on how to use application 

#11/4/16 Update
----------------

	*Added instructions for setting up the database and run the test module
	*Numerous minor formatting changes to tournament.py
	*Changed tournament.sql to clear previous instances of databases
	*Changed tournament.sql to connect to tournament database
	*Changed tournament.sql and tournament.py to eliminate redundant data
	*Changed tournament.sql to include foreign keys for data integrity
	*Added 'standings' view to tournament.sql 

#Setting up the database and running the test module
----------------------------------------------------

1. Install [Vagrant](https://www.vagrantup.com/) and [VirtualBox](https://www.virtualbox.org/wiki/VirtualBox)

2. Start the VirtualBox application 

3. From the command line, clone the [fullstack-nanodegree-vm](https://github.com/udacity/fullstack-nanodegree-vm)

4. Clone this repository to the vagrant VM directory

5. Launch the Vagrant VM with the command 'vagrant up'

6. Log into the Vagrant VM with the command 'vagrant ssh'

7. Navigate to the project's directory within the virtual machine with 'cd /vagrant/swiss-tournament'

8. Define the database with 'psql -f tournament.sql'

9. Run the tests with 'python tournament_test.py'

#List of files
--------------

	*tournament.py: code largely consisting of functions which operate
		perform the necessary operations for the swiss tournament
	*tournament_test.py: the included file which checks to see if
		tournament.py is operating correctly
	*tournament.pyc: compiled version of tournament.py
	*tournament.sql: contains the data structures for the database
	*README.md: this readme file
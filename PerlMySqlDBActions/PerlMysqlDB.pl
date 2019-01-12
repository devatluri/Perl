use strict;
use warnings;
use DBI;    #perl DBI module to provide support for Database Interface
use DBD::mysql; #Perl Mysql Driver module to provide support for Mysql Database

my $driver="mysql";	#assigning Driver name to a variable
my $database="sakila"; #using a database available in mysql in which operation is to be performed
my $dsn="DBI:$driver:database=$database"; #data source name variable which holds driver and database
my $userid="XXX"; #user id for mysql here assigned as XXX and with usage can be edited
my $password="XXX";#password for mysql here assigned as XXX and with usage can be edited
#database handler(dbh) variable which use DBI module with connect function taking input variables as data source name($dsn) and user authentication details
my $dbh=DBI->connect($dsn,$userid,$password) or die $DBI::errstr; 
my $sth= $dbh->prepare("SELECT * FROM actor"); #statement handler which use database handler with prepare function,in which the respected query can be provided for future execution
$sth->execute() or die $DBI::errstr; #statement handler is executed(it means, it is executed on mysql server)
while (my @row = $sth->fetchrow_array()) { #while loop to fetch values one by one using statement handler and assigning to array
   my ($number, $first_name, $last_name ) = @row; # ordered assignment of group of scalar variables to values in @row array
   print "Number = $number, First Name = $first_name, Last Name= $last_name\n"; #printing the values
}
$sth->finish(); # finishing the statement handler request
print("Number of rows found:",+$sth->rows()); #printing number of rows by using rows() function










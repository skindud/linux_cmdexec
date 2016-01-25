Same time commands execution on multiple servers via ssh
==================

Description
-----------------
- command file starts working at the same time on all handled servers in @servers:shared;
- any command file language on remote servers (bash, perl, python);
- you can test you exec file on one server first and then start it on all servers;
- it is useful for 5+ servers or long exec file, but you can use the following script for simple case: for i in server1 server2; do echo "### $i ### "; ssh $i "<command1>; <command2>"; done

TO DO list
------

- do a separate file for servers list

Installation
----------------
- eval `ssh-agent` or use your password for each server
- put your command in mrssh_sd6fd7NC.sh.
- put your servers in @servers array in mrssh.pl.
- start mrssh.pl.
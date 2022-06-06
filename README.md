Same time commands execution on multiple servers via ssh
==================

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

[![GitHub Super-Linter][linter-shield]][linter-url]

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

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/skindud/linux_cmdexec.svg?style=for-the-badge
[contributors-url]: https://github.com/skindud/linux_cmdexec/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/skindud/linux_cmdexec.svg?style=for-the-badge
[forks-url]: https://github.com/skindud/linux_cmdexec/network/members
[stars-shield]: https://img.shields.io/github/stars/skindud/linux_cmdexec.svg?style=for-the-badge
[stars-url]: https://github.com/skindud/linux_cmdexec/stargazers
[issues-shield]: https://img.shields.io/github/issues/skindud/linux_cmdexec.svg?style=for-the-badge
[issues-url]: https://github.com/skindud/linux_cmdexec/issues
[license-shield]: https://img.shields.io/github/license/skindud/linux_cmdexec.svg?style=for-the-badge
[license-url]: https://github.com/skindud/linux_cmdexec/blob/master/LICENSE.txt

[linter-shield]: https://github.com/skindud/linux_cmdexec/workflows/Lint%20Code%20Base/badge.svg
[linter-url]: https://github.com/skindud/linux_cmdexec/actions

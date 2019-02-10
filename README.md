# dtar

**dtar** - a tool to quickly create an archive copy of the directory using the current date / time in the archive name

## Getting Started

These instructions will get you a copy of the project up and running on your local machine.

```
~/Applications> dtar --help
dtar - Quickly backs up the working directory: /Users/evbg/Applications
     ( Adds the current date and time to the name.
       Default datetime format: +%Y-%m-%d_%H-%M-%S
       For example: '2019-02-10_21-59-19')
Usage: dtar {  -c |  -a |  -z |  -j |  -x }[ options ] - backs up to parent directory
       dtar { -cc | -aa | -zz | -jj | -xx }[ options ] - backs up to target backup directory
       dtar {  -m | -mm | -mb }[ options ] - commands for renames
       dtar {  -s |  -w |  -e |  -r } - commands for setup target backup directory
       dtar { -ls } - displays the contents of the backup directory
       dtar {  -h } - displays help
      *See living examples at the end of help.
Options:
      -f|--from     Temporarily sets the source directory
      -b|--to       Temporarily sets target backup directory
      -v|--verbose  Verbose mode
      -n|--dry-run  Dry run mode
Backup Commands:
      -c            Creates a copy of the current directory in the format 'Applications_2019-02-10_21-59-19'
      -a            Creates archive 'Applications_2019-02-10_21-59-19.tar'
      -z            Creates archive 'Applications_2019-02-10_21-59-19.tar.gz'
      -j            Creates archive 'Applications_2019-02-10_21-59-19.tar.bz2'
      -x            Creates archive 'Applications_2019-02-10_21-59-19.tar.xz'
      -cc           Creates a copy of the current directory in the format '_Users_evbg__Applications_2019-02-10_21-59-19'
      -aa           Creates archive '_Users_evbg__Applications_2019-02-10_21-59-19.tar'
      -zz           Creates archive '_Users_evbg__Applications_2019-02-10_21-59-19.tar.gz'
      -jj           Creates archive '_Users_evbg__Applications_2019-02-10_21-59-19.tar.bz2'
      -xx           Creates archive '_Users_evbg__Applications_2019-02-10_21-59-19.tar.xz'
Rename Commands:
      -m            Renames the current directory to 'Applications_2019-02-10_21-59-19'
      -mm           Renames the current directory to '_Users_evbg__Applications_2019-02-10_21-59-19'
      -mb           Renames the current directory, for example: 'Applications_2019-02-10_21-59-19' to its original location,
                    returning its name without a date and time at the end: 'Applications'
Setup commands:
      You can set the backup directory by specifying the full path to it in the file '~/.dtarget'
      -s            Resets '~/.dtarget' to default backup directory - '/Users/evbg/dtar_backups'
      -w            Resets '~/.dtarget' to current working directory - '/Users/evbg/Applications'
      -e            Calls default $EDITOR or vi (if unset) for editing the file '~/.dtarget'
      -r            Removes '~/.dtarget'
Additional Commands:
      -dwd          Displays the path to the backup directory
      -ls           Displays the contents of the backup directory
      -dt           Displays current datetime: '2019-02-10_21-59-19'
      -i            Self-installs to '$HOME/bin' directory
      -i -g         Self-installs to '/usr/local/bin' directory
      -ia           Creates symbolic links to '$HOME/bin/dtar' for quick use of basic commands
                    ( c a z j x cc aa zz jj xx m mm mb dwd dls dt dts dtw dte dtr)
Living examples:
======================
The current directory:
======================
'/Users/evbg/Applications' ->
---------|
dtar  c  |-> '/Users/evbg/Applications_2019-02-10_21-59-19'
dtar cc  |-> '/Users/evbg/_Users_evbg__Applications_2019-02-10_21-59-19'
dtar  a  |-> '/Users/evbg/Applications_2019-02-10_21-59-19.tar'
dtar aa  |-> '/Users/evbg/_Users_evbg__Applications_2019-02-10_21-59-19.tar'
dtar  z  |-> '/Users/evbg/Applications_2019-02-10_21-59-19.tar.gz'
dtar zz  |-> '/Users/evbg/_Users_evbg__Applications_2019-02-10_21-59-19.tar.gz'
dtar  j  |-> '/Users/evbg/Applications_2019-02-10_21-59-19.tar.bz2'
dtar jj  |-> '/Users/evbg/_Users_evbg__Applications_2019-02-10_21-59-19.tar.bz2'
dtar  x  |-> '/Users/evbg/Applications_2019-02-10_21-59-19.tar.xz'
dtar xx  |-> '/Users/evbg/_Users_evbg__Applications_2019-02-10_21-59-19.tar.xz'
dtar  l  |-> '/Users/evbg/Applications_2019-02-10_21-59-19.tar.lzma'
dtar ll  |-> '/Users/evbg/_Users_evbg__Applications_2019-02-10_21-59-19.tar.lzma'
dtar 0.0.1
The path to the target backup directory can be set in the "~/.dtarget" file
Currently, the backup directory is:
/Users/evbg
```

### Prerequisites
dtar can be used in any POSIX-compatible operating system, in which there are such standard tools or commands as: sh, date, tar, sed 

```
which sh date tar sed
/bin/sh
/bin/date
/usr/bin/tar
/usr/bin/sed
```

### Installing

#### Manual install
Just copy the executable **dtar** file to the directory specified in the \$PATH environment variable

#### Self-installs to $HOME/bin directory:
```
./dtar -i
```

#### Self-installs to /usr/local/bin directory:
```
sudo ./dtar -i -g
```

Creates symbolic links to the **dtar** executable for quick use of basic commands:
```
./dtar -ia
```

## Running the tests

The following tools are used for testing:
[shunit2](https://github.com/kward/shunit2)
[shellcheck](https://github.com/koalaman/shellcheck)

Please see the instructions on the web pages of these projects.

```
./dtar_test.sh
```

## Versioning

We use [SemVer](http://semver.org/) for versioning.

## Authors

* **Evgeny V. Bogodukhov** - *Initial work* - [evbg](https://github.com/evbg)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

TPS REPORT
==========
This is a simple puppet module that can create multiline text files without a template.

File defaults owner and group to '0' and the file permissions to '0644'

*NOTE: flare can accept a single line or an array.

EXAMPLE 

tps::report { '/etc/file.txt':
  flare => [
    'line one',
    'line two',
    'line three',
    'line four',
  ],
}

*OVERIDE OPTIONS:

owner => 'Lumbergh',

group => 'Chotchkies',

mode  => '0755',

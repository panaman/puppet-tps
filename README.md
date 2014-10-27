TPS REPORT WRITER
=================
This is a simple puppet module that can create multi-line text files without a template.

File defaults owner and group to '0' and the file permissions to '0644'

*NOTE: flare can accept a single line or an array. Variables are also accepted.

###Example
```
  tps::report { '/etc/file.txt':
    flare => [
      'PC load letter! WTF does that mean?',
      'We need to talk about your flair',
      'Sounds like someone has a case of the Mondays',
      'We need to talk about your TPS reports',
    ],
  }
```
  tps::report { '/etc/file2.txt':
    flare => 'We need to talk about your TPS reports',
  }

###Override options
```
  owner     => 'Lumbergh',
  group     => 'Chotchkies',
  mode      => '0755',
  show_diff => false,

```

###Example with override and variable

```
  tps::report { '/etc/file.txt':
    owner     => 'Lumbergh',
    group     => 'Chotchkies',
    mode      => '0755',
    show_diff => false,
    flare => [
      "PC load letter! $hostname",
      'We need to talk about your flair',
      'Sounds like someone has a case of the Mondays',
      'We need to talk about your TPS reports',
    ],
  }
```


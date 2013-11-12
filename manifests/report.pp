define tps::report (
  $tpsfile=$title,
  $mode='0644',
  $owner='0',
  $group='0',
  $ensure='present',
  $flare,
  ) {
  $content = inline_template("<% @flare.each do |lines|%><%= lines %>\n<% end %>")
  file { $tpsfile: 
    ensure  => $ensure,
    owner   => $owner,
    group   => $group,
    content => $content,
  }
}

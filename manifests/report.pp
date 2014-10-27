define tps::report (
  $tpsfile=$title,
  $mode='0644',
  $owner='0',
  $group='0',
  $ensure='present',
  $flare,
  $show_diff="true",
  ) {
  $flare_array = any2array($flare)
  $content = inline_template("<% @flare_array.each do |lines|%><%= lines %>\n<% end %>")
  file { $tpsfile: 
    ensure    => $ensure,
    mode      => $mode,
    owner     => $owner,
    group     => $group,
    show_diff => $show_diff,
    content   => $content,
  }
}

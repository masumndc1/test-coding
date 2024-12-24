include stdlib

$platform = $::architecture

$list_keys = [
  'platform',
  'sitedir',
  'version'
  ]

$list_keys.each | $k | {
 notice (
  $facts['ruby'][$k]
 )
}

notify { 'ruby_version':
  message => $platform
}

file { '/tmp/masum':
  ensure => file,
  source => [
    "puppet:///modules/nfs/conf.${host}",
    "puppet:///modules/nfs/conf.${operatingsystem}",
    "puppet:///modules/nfs/conf"
  ],
  show_diff => 'true',
} -> file_line { 'something':
  line => "what to say there",
  path => '/tmp/masum',
}

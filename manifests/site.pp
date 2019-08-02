node default { # shell based 
#  file { '/root/README': #resource name
#    ensure => file, # parameter 
#    content => 'This is a readme',
#    owner   => 'root', #last should also have comma at the end
  }
node 'master.puppet.vm' {
  include role::master_server
  file {'/root/README':
    ensure => file,
    content => "Welcome to ${fqdn}",
  }
}
node /^web/ {
  include role::app_server
}
node /^db/ {
  include role::db_server
}


node default { # shell based 
  file { '/root/README': #resource name
    ensure => file, # parameter 
    content => 'This is a readme',
    owner   => 'root', #last should also have comma at the end
  }
}

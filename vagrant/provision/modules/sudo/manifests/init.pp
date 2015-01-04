class sudo {

  package { "sudo":
    ensure => present,
  }

  file { "/etc/sudoers.d/20_Security":
    ensure  => file,
    content => "%security ALL=(ALL) NOPASSWD: ALL", 
    owner   => "root",
    group   => "root",
    mode    => 0440,
    require => Package["sudo"],
  }

}

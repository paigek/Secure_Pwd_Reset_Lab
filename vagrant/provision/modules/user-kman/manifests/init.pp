class user-kman {

group { "security":
        ensure => present,
        gid    => 2000
}
  macro-useradd { "kman":
    name       => "Kman",
    uid        => "1001",
    password   => "Thisisareallycomplexpassword",
    groups     => ["security"],
    sshkeytype => "ssh-rsa",
    sshkey     => "AAAAB3NzaC1yc2EAAAADAQABAAACAQDbB3StJPuvz8LpwDWEoFiiQzKkD5zc4EeaTmstB8BJcoyMOPgIEohcU5EcTmdrD+nOuul7kC1+ZivS+QG98Y2jBeOEob/NuMfUJo3yfBFKjYBkjbYjX/YpMbtnyoWwIxLNblV8tePZGsfb0U2VXIr4gil9V0xDYARfoSnkRrYG7sH722c9eDnPBiO0jlw/066py3H8v+WRp7YaV8X3vGI7l9m852xANliMqGOmt1m6FAHmWPKpawvR39ohggW05h/d4Y9E5e6eGGJsS3K3WEF0RvJ8pdyignunX5DUjfZ0qb04L61KOYsLEdqXN9IaVLBx9ZzYTtV2j/3XPBdA+yTf+Q5ThWv6cpncbevOtPEIch7CQ9e0QE6XUCWoOxfdt91OVjhdyFNS1B4ITG7AFj4TE779IF/d31W9Mug7w0fsm3j3+euJebCaDKCR8J1mbMGkwYKlBiC+S9EziEqh72dAXU70vPipg4l+rNxTragY7dq4EoqWBeZssBlN6NMUv7bVV27p9YQuUFxfSP+oPyog6J0sWbnhfCLsvIDycO3TbDPOQmo7lGprVe7rcehrKeQwJ2ycKdlhK/+a6nSKu7NeqhP7oKaJvpMPLhM06139sFI1sJypEtk+/PaqnlNNLvrKzNmU6lqZz4Harh6n+c308TZ0u2N075jHFV+6ZWFlvQ=="
  }

}

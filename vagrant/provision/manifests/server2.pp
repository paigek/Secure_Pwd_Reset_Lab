class users {
  include user-kpaige
  include sudo
}

node "puppetclient" {
  include users
}

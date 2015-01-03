class users {
  include user-kman
  include sudo
}

node default {
  include users
}

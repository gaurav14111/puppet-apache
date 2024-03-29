# @summary A short summary of the purpose of this class
# Install the base Apache package
#
class apache::install ( 
  $install_name   = $apache::params::install_name,
  $install_ensure = $apache::params::install_ensure,
)inherits apache::params {
  package { "${install_name}":
    ensure => $install_ensure,
  }
}

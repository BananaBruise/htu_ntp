class htu_ntp::install(
  String $package_name   = $htu_ntp::package_name,
  String $package_ensure = $htu_ntp::package_ensure,
){
  package { $package_name:
    ensure => $package_ensure,
  }
}

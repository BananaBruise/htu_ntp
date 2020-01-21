class htu_ntp(
 String $package_name        = $htu_ntp::params::package_name,
 String $package_ensure      = $htu_ntp::params::package_ensure,
 String $config_name         = $htu_ntp::params::config_name,
 String $config_file_mode    = $htu_ntp::params::config_file_mode,
 Array[String] $servers      = $htu_ntp::params::servers,
 String $service_ensure      = $htu_ntp::params::service_ensure, 
 String $service_name        = $htu_ntp::params::service_name,
 Boolean $service_enable     = $htu_ntp::params::service_enable,
 Boolean $service_hasrestart = $htu_ntp::params::service_hasrestart,
 Boolean $service_hasstatus  = $htu_ntp::params::service_hasstatus,
) inherits ::htu_ntp::params{
  class { '::htu_ntp::install': }
  -> class { '::htu_ntp::config': }
  ~> class { '::htu_ntp::service': }
}

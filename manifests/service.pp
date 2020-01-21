class htu_ntp::service (
  String $service_name        = $htu_ntp::service_name,
  Boolean $service_enable     = $htu_ntp::service_enable,
  String $service_ensure      = $htu_ntp::service_ensure,
  Boolean $service_hasstatus  = $htu_ntp::service_hasstatus,
  Boolean $service_hasrestart = $htu_ntp::service_hasrestart,
){
  service { 'ntp':
    ensure     => $service_ensure,
    enable     => $service_enable,
    name       => $service_name,
    hasstatus  => $service_hasstatus,
    hasrestart => $service_hasrestart,
  }
}

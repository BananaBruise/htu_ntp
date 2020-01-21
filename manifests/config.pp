class htu_ntp::config(
  String $config_name      = $htu_ntp::config_name,
  String $config_file_mode = $htu_ntp::config_file_mode,
  Array[String] $servers   = $htu_ntp::servers,
){
  file {"/etc/${config_name}":
    ensure  => file,
    owner   => 0,
    group   => 0,
    mode    => $config_file_mode,
    content => template("$module_name/ntp.conf.erb") 
  }
}

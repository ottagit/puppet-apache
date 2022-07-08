# @summary A short
#   Manages any Apache configurations
class apache::config {
  file {
    "apache_config":
      ensure => $apache::config_ensure,
      path   => $apache::config_path,
      source => "puppet:///modules/apache/${osfamily}.conf",
      owner  => 'root',
      group  => 'root',
      mode   => '0644',
  }
  @@host {
    "$hostname":
      host_aliases => "$fqdn",
      ip           => "$ipaddress",
  }
}

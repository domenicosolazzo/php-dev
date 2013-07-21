default[:app][:server_name]        = "localhost"
default[:app][:server_aliases]     = ["*.localhost"]
default[:app][:docroot]            = "/home/vagrant/web-app"
default[:app][:php_timezone]       = "Europe/Rome"
default[:app][:vhost_root]         = "/vagrant/sites/default"

default[:apache][:default_site_enabled] = false
#default[:apache][:log_dir] = "/var/logs/apache2"
#default[:apache][:error_log] = "/var/logs/apache2/error"
#default[:apache][:access_log] = "/var/logs/apache2/access"
default[:apache][:user] = "vagrant"
default[:apache][:group] = "vagrant"
#default[:apache][:listen_ports] = 80
default[:apache][:contact] = "admin@example.com"
#default[:apache][:timeout] = 300
#default[:apache][:keepalive] = "On"
#default[:apache][:keepaliverequests] = 100
#default[:apache][:keepalivetimeout] = 5

default[:apache][:prefork][:startservers] = 16
default[:apache][:prefork][:minspareservers] = 16
default[:apache][:prefork][:maxspareservers] = 32
default[:apache][:prefork][:serverlimit] = 400
default[:apache][:prefork][:maxrequestperchild] = 10000

default[:apache][:worker][:startservers] = 4
default[:apache][:worker][:serverlimit] = 16
default[:apache][:worker][:maxclients] = 1024
default[:apache][:worker][:minsparethreads] = 64
default[:apache][:worker][:maxsparethreads] = 192




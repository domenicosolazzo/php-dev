name             'php-dev'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures php-dev'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.2'


depends "apache2"
depends "apt"

# Register PHP 5.4 PPA repository
apt_repository "php54" do
  uri "http://ppa.launchpad.net/ondrej/php5/ubuntu"
  distribution node['lsb']['codename']
  components ["main"]
  keyserver "keyserver.ubuntu.com"
  key "E5267A6C"
end

depends "build-essential"
depends "mysql"
depends "php"
depends "chef-composer"
depends "phpunit"
depends "xdebug"


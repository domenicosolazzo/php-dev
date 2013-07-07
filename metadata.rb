name             'php-dev'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures php-dev'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.2'


depends "apache2"
depends "apt"
depends "build-essential"
depends "mysql"
depends "php"
depends "chef-composer"
depends "phpunit"
depends "xdebug"


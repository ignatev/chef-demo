name 'petclinic'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'All Rights Reserved'
description 'Installs/Configures petclinic'
long_description 'Installs/Configures petclinic'
version '0.1.0'
chef_version '>= 12.14' if respond_to?(:chef_version)

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/petclinic/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/petclinic'
name "flask-app"
description "Chef demo cookbook for flask app and db install"

depends 'mysql', '~> 8.5'
depends 'docker'
depends 'mysql2_chef_gem', '~> 2.1'
depends 'database', '~> 6.1'
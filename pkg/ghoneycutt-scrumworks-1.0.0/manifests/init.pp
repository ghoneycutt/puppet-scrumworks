# Class: scrumworks
#
# scrumworks - http://danube.com/
#
# Requires:
#   class generic
#   class mysql::server
#
class scrumworks {

    include mysql::server

    $baseDir = "/data/scrumworks"

    # setup database 
    mysql::do {
        "scrumworks_db_setup":
            source  => "puppet:///modules/scrumworks/setup.sql",
    } # mysql::do

    realize Generic::Mkuser[scrumworks]

} # class scrumworks

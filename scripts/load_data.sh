#!/bin/bash

source ./scripts/load_data.cfg

# load_data.cfg example
# db_user=my_username
# db_password=my_secure_password

ogr2ogr \
    -f PostgreSQL PG:"host=localhost user=$db_user password=$db_password \
    dbname=kal_mtb" ./data/osm-export.geojson \
    -nln mtb_trails -lco GEOMETRY_NAME=geom

ogr2ogr \
    -f PostgreSQL PG:"host=localhost user=$db_user password=$db_password \
    dbname=kal_mtb" ./data/kmtn-aoi.geojson \
    -nln mtb_trails_aoi -lco GEOMETRY_NAME=geom
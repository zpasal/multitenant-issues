# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'crypto'

## First tanent seed

tenant = Tenant.new
tenant.name = 'Localhost Tenant'
tenant.host = 'localhost'
tenant.active = true
tenant.save!

tenant = Tenant.new
tenant.name = 'ACME Tenant'
tenant.host = 'acme'
tenant.active = true
tenant.save!


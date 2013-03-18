class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter	:set_tenant

 	def set_tenant
 		puts "-- #{request.subdomains}"
 		@tenant = Tenant.current = Tenant.where(:host => request.subdomain).first
 		# TODO tenant not found
 	end    
end

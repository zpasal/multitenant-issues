class Project < ActiveRecord::Base
	include TenantScoped

	has_many	:issues

  attr_accessible :name
end

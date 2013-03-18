class Issue < ActiveRecord::Base
	include	TenantScoped

  belongs_to 	:tenant
  belongs_to	:project
  attr_accessible :description, :name, :status, :project_id
end

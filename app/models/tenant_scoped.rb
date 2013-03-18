module TenantScoped
  extend ActiveSupport::Concern
  
  included do
    belongs_to  :tenant
    before_validation { self.tenant = Tenant.current }
    default_scope lambda { where('tenant_id = ?', Tenant.current) }
  end
end
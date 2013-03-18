class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
    	t.references	:tenant
      t.string :name

      t.timestamps
    end

    add_index	:projects, :tenant_id
  end
end

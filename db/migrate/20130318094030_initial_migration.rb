class InitialMigration < ActiveRecord::Migration
  def up
    create_table :tenants do |t|
      t.string  :name
      t.string  :host
      t.boolean :active
      t.timestamps
    end
    add_index :tenants, [:host], :unique => true  	
  end

  def down
   	drop_table :tenants
  end
end

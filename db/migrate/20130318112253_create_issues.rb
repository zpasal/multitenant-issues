class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.references :tenant
      t.references  :project
      t.string :name
      t.text :description
      t.integer :status

      t.timestamps
    end
    add_index :issues, :tenant_id
  end
end

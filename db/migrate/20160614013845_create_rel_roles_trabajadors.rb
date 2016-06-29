class CreateRelRolesTrabajadors < ActiveRecord::Migration
  def change
    create_table :rel_roles_trabajadors do |t|
      t.references :role, index: true, foreign_key: true
      t.references :employee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

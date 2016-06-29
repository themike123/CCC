class CreateHasComputers < ActiveRecord::Migration
  def change
    create_table :has_computers do |t|
      t.references :program, index: true, foreign_key: true
      t.references :computer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

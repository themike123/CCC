class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :p1
      t.string :p2
      t.string :p3
      t.string :p4
      t.text :p5

      t.timestamps null: false
    end
  end
end

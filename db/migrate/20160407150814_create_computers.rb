class CreateComputers < ActiveRecord::Migration
  def change
    create_table :computers do |t|
      t.string :equipo
      t.integer :idi
      t.string :numserie
      t.string :marca
      t.string :tipo
      t.string :modelo
      t.string :observaciones

      t.timestamps null: false
    end
  end
end

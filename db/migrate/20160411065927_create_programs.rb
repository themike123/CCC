class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :nombre
      t.string :version
      t.string :plataforma
      t.string :arquitectura
      t.string :tipo

      t.timestamps null: false
    end
  end
end

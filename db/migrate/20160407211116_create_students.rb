class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :nombre
      t.string :app
      t.string :apm
      t.string :estado
      t.string :municipio
      t.string :direccion
      t.string :telefono
      t.string :celular
      t.string :correo
      t.string :matricula

      t.timestamps null: false
    end
  end
end

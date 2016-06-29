class CreateBinnacles < ActiveRecord::Migration
  def change
    create_table :binnacles do |t|
      t.string :nombre_student
      t.string :horainicial
      t.string :horafinal
      t.string :nombre_computer
      t.string :tiempo
      t.string :fecha
      t.string :observaciones

      t.timestamps null: false
    end
  end
end

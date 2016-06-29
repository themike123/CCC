class CreateComplains < ActiveRecord::Migration
  def change
    create_table :complains do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :subject
      t.string :content

      t.timestamps null: false
    end
  end
end

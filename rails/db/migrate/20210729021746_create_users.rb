class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :nombre1
      t.string :nombre2
      t.string :apellido1
      t.string :apellido2
      t.integer :celular
      t.string :email

      t.timestamps
    end
  end
end

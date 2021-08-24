class AddNombresToUsuarios < ActiveRecord::Migration[6.1]
  def change
    add_column :usuarios, :nombres, :string
  end
end

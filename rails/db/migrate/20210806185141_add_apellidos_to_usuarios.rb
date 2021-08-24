class AddApellidosToUsuarios < ActiveRecord::Migration[6.1]
  def change
    add_column :usuarios, :apellidos, :string
  end
end

class AddRutToUsers < ActiveRecord::Migration
  def change
    add_column :users, :rut, :string
  end
end

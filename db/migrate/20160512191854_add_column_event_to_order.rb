class AddColumnEventToOrder < ActiveRecord::Migration
  def change
  	add_column :orders, :event, :string
  end
end

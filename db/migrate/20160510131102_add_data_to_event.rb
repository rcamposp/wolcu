class AddDataToEvent < ActiveRecord::Migration
  def change
    add_column :events, :name, :string
    add_column :events, :description, :string
    add_column :events, :date, :date
    add_column :events, :time, :time
  end
end

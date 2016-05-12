class ChangeColumn < ActiveRecord::Migration
  def change
  	change_column :events, :description, :string, :limit => 2000
  end
end

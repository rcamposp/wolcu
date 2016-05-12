class AddZoneToUser < ActiveRecord::Migration
  def change
    add_reference :users, :zone, index: true, foreign_key: true
  end
end

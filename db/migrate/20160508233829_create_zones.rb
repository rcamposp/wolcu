class CreateZones < ActiveRecord::Migration
  def change
    create_table :zones do |t|
      t.string :name
      t.references :country, index: true, foreign_key: true
      t.boolean :status

      t.timestamps null: false
    end
  end
end

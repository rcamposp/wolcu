class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.string :description, :limit => 500
      t.decimal :price, :precision => 10, :scale => 2
      t.integer :quantity
      t.references :event, index: true, foreign_key: true
      t.boolean :status, :default => true

      t.timestamps null: false
    end
  end
end

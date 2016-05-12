class CreateOrderTickets < ActiveRecord::Migration
  def change
    create_table :order_tickets do |t|
      t.references :order, index: true, foreign_key: true
      t.string :ticket_name
      t.decimal :price
      t.string :firstname
      t.string :lastname
      t.string :email

      t.timestamps null: false
    end
  end
end

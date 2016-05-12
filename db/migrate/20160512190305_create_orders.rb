class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, index: true, foreign_key: true
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone
      t.string :rut
      t.string :address
      t.string :country
      t.string :zone
      t.string :city
      t.decimal :subtotal
      t.decimal :total
      t.integer :status
      t.string :payment_method

      t.timestamps null: false
    end
  end
end

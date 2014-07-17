class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :credit_card
      t.date :expiration
      t.integer :product_id

      t.timestamps
    end
  end
end

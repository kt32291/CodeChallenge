class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.decimal :price
      t.string :pic
      t.text :description

      t.timestamps
    end
  end
end

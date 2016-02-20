class CreateShirtOrders < ActiveRecord::Migration
  def change
    create_table :shirt_orders do |t|
      t.string :shirt_size
      t.integer :number
      t.boolean :fulfilled
      t.string :house

      t.timestamps null: false
    end
  end
end

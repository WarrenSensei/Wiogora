class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :family_id
      t.float :amount
      t.string :type

      t.timestamps null: false
    end
  end
end

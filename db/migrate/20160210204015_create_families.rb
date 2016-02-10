class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :parent1_name
      t.string :parent2_name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phone
      t.string :alt_phone
      t.string :trusted_adults
      t.string :referral
      t.text :notes

      t.timestamps null: false
    end
  end
end

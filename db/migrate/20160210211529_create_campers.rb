class CreateCampers < ActiveRecord::Migration
  def change
    create_table :campers do |t|
      t.integer :family_id
      t.string :alt_address1
      t.string :alt_address2
      t.string :alt_city
      t.string :alt_state
      t.string :alt_zipcode
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :preferred_name
      t.string :pronoun
      t.date :birthdate
      t.string :faith
      t.string :congregation
      t.string :house
      t.string :house_preference
      t.string :house_q1
      t.string :house_q2
      t.string :house_q3
      t.string :friends

      t.timestamps null: false
    end
  end
end

class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.boolean :approved
      t.boolean :cancelled
      t.integer :year
      t.boolean :returning
      t.float :cost
      t.string :insurance
      t.string :allergies
      t.text :health_details
      t.string :shirt_size
      t.boolean :before_care
      t.boolean :after_care
      t.time :dropoff_time
      t.time :pickup_time
      t.boolean :medical_release
      t.boolean :photo_release
      t.boolean :philosophy_release
      t.boolean :general_release
      t.text :notes

      t.timestamps null: false
    end
  end
end

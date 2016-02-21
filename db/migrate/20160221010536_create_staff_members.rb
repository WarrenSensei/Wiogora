class CreateStaffMembers < ActiveRecord::Migration
  def change
    create_table :staff_members do |t|
      t.integer :family_id
      t.string :first_name
      t.string :last_name
      t.string :preferred_name
      t.string :wiogora_name
      t.string :phone
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :email
      t.text :education_experience
      t.text :why_work_here
      t.string :availability
      t.string :role
      t.string :role_category
      t.string :shirt_size
      t.string :returning_staff
      t.string :house
      t.string :guiding_class
      t.text :food_allergies
      t.string :background_check_agreement
      t.string :program_philosophy_agreement
      t.text :notes
      t.string :parent_permission
      t.string :parent_email
      t.string :entering_grade
      t.text :activities
      t.text :essay

      t.timestamps null: false
    end
  end
end

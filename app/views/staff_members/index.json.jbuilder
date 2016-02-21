json.array!(@staff_members) do |staff_member|
  json.extract! staff_member, :id, :family_id, :first_name, :last_name, :preferred_name, :wiogora_name, :phone, :address1, :address2, :city, :state, :zipcode, :email, :education_experience, :why_work_here, :availability, :role, :role_category, :shirt_size, :returning_staff, :house, :guiding_class, :food_allergies, :background_check_agreement, :program_philosophy_agreement, :notes, :parent_permission, :parent_email, :entering_grade, :activities, :essay
  json.url staff_member_url(staff_member, format: :json)
end

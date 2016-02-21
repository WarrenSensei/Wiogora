require 'test_helper'

class StaffMembersControllerTest < ActionController::TestCase
  setup do
    @staff_member = staff_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:staff_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create staff_member" do
    assert_difference('StaffMember.count') do
      post :create, staff_member: { activities: @staff_member.activities, address1: @staff_member.address1, address2: @staff_member.address2, availability: @staff_member.availability, background_check_agreement: @staff_member.background_check_agreement, city: @staff_member.city, education_experience: @staff_member.education_experience, email: @staff_member.email, entering_grade: @staff_member.entering_grade, essay: @staff_member.essay, family_id: @staff_member.family_id, first_name: @staff_member.first_name, food_allergies: @staff_member.food_allergies, guiding_class: @staff_member.guiding_class, house: @staff_member.house, last_name: @staff_member.last_name, notes: @staff_member.notes, parent_email: @staff_member.parent_email, parent_permission: @staff_member.parent_permission, phone: @staff_member.phone, preferred_name: @staff_member.preferred_name, program_philosophy_agreement: @staff_member.program_philosophy_agreement, returning_staff: @staff_member.returning_staff, role: @staff_member.role, role_category: @staff_member.role_category, shirt_size: @staff_member.shirt_size, state: @staff_member.state, why_work_here: @staff_member.why_work_here, wiogora_name: @staff_member.wiogora_name, zipcode: @staff_member.zipcode }
    end

    assert_redirected_to staff_member_path(assigns(:staff_member))
  end

  test "should show staff_member" do
    get :show, id: @staff_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @staff_member
    assert_response :success
  end

  test "should update staff_member" do
    patch :update, id: @staff_member, staff_member: { activities: @staff_member.activities, address1: @staff_member.address1, address2: @staff_member.address2, availability: @staff_member.availability, background_check_agreement: @staff_member.background_check_agreement, city: @staff_member.city, education_experience: @staff_member.education_experience, email: @staff_member.email, entering_grade: @staff_member.entering_grade, essay: @staff_member.essay, family_id: @staff_member.family_id, first_name: @staff_member.first_name, food_allergies: @staff_member.food_allergies, guiding_class: @staff_member.guiding_class, house: @staff_member.house, last_name: @staff_member.last_name, notes: @staff_member.notes, parent_email: @staff_member.parent_email, parent_permission: @staff_member.parent_permission, phone: @staff_member.phone, preferred_name: @staff_member.preferred_name, program_philosophy_agreement: @staff_member.program_philosophy_agreement, returning_staff: @staff_member.returning_staff, role: @staff_member.role, role_category: @staff_member.role_category, shirt_size: @staff_member.shirt_size, state: @staff_member.state, why_work_here: @staff_member.why_work_here, wiogora_name: @staff_member.wiogora_name, zipcode: @staff_member.zipcode }
    assert_redirected_to staff_member_path(assigns(:staff_member))
  end

  test "should destroy staff_member" do
    assert_difference('StaffMember.count', -1) do
      delete :destroy, id: @staff_member
    end

    assert_redirected_to staff_members_path
  end
end

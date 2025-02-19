# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

require 'test_helper'

class PeopleControllerTest < ActionController::TestCase
  setup do
    @person = people(:one)
  end

  # test "should get index" do
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:people)
  # end

  # test "should get new" do
  #   get :new
  #   assert_response :success
  # end

  test "should create person" do
    assert_difference('person.count') do
    post :create, person: { first_name: @person.first_name, last_name: @person.last_name }
  end

  #   assert_redirected_to person_path(assigns(:person))
  # end

  # test "should show person" do
  #   get :show, id: @person
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get :edit, id: @person
  #   assert_response :success
  # end

  # test "should update person" do
  #   patch :update, id: @person, person: { first_name: @person.first_name, last_name: @person.last_name }
  #   assert_redirected_to person_path(assigns(:person))
  # end

  # test "should destroy person" do
  #   assert_difference('person.count', -1) do
  #     delete :destroy, id: @person
  #   end

  #   assert_redirected_to people_path
  # end
end

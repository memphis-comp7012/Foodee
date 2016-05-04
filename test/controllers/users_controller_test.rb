# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

# require 'test_helper'

class UsersControllerTest < ActionController::TestCase

include Devise::TestHelpers

test "should be redirected" do
@controller = PagesController.new  
get :home
assert_redirected_to new_user_session_path, "User is not redirected!"
end


# test "should sign in" do
# #@request.env["devise.mapping"] = Devise.mappings[:user]
# @controller = PagesController.new
# #@user = User.new("abc@memphis.edu",User.new.send(:password_digest, 'Passw0rd'))
# #sign_in @user

# sign_in User.first
# get :home
# assert_response :success, "User is not signed in!"
# end


#   #Users::SessionsControllerTest < ActionController::TestCase 
#   #UsersControllerTest < ActionController::TestCase 
 
#  include Devise::TestHelpers

#  # setup do
#  #    #@controller = SessionsController.new
#  #    @user = users(:abc)
#  # end

# end

# class User::RegistrationsControllerTest < ActionController::TestCase
# #   include Devise::TestHelpers # for including devise's actions

# #   def setup # this set up default settings for controller
# #     @controller = RegistrationsController.new
# #     @request    = ActionController::TestRequest.new
# #     @response   = ActionController::TestResponse.new
# #     @request.env["devise.mapping"] = Devise.mappings[:user]
# #     @user = Registrations.new(username: "John", email: "myemail@email.com")
# #   end

# #   setup do # this used for setting global variable used in test file 
# #     @user= users(:one) # users is the fixture file of test in which you can set default data for test environment.
# #   end

# #   test "should create user" do # then you test cases for controller
# #     sign_in users(:one)
# #     post :create, users:{email:'test@test.com, password:'XXXX'...}# you can pass arguments for create method. Please check it once, i am not sure about names
# #     assert_response :success 
# #   end


# # end
# def setup
#     request.env['devise.mapping'] = Devise.mappings[:user]

#     @user = users(:abc)
#   end

#  test "should get new" do
#     get :new
#     assert_response :success
#   end

# #     #test "should login the user" do
#   #test "should create user" do
#         @request.env["devise.mapping"] = Devise.mappings[:user]
        #@controller = RegistrationsController.new

# #         @request    = ActionController::TestRequest.new
# #         @response   = ActionController::TestResponse.new
# #         @request.env["devise.mapping"] = Devise.mappings[:user]
  # user = Registrations.new(username: "John", email: "myemail@email.com")

    #   sign_up user

# #     #@controller = RegistrationsController.new
# #     #get :new
# #     #post :user_session 
# #       assert_response :success

# #         # new_user_session GET    /users/sign_in(.:format)            devise/sessions#new
# #         #     user_session POST   /users/sign_in(.:format)            devise/sessions#create

# #    # get :index
#assert_response :success
# #     #assert_not_nil assigns(:users)
  
    #    end



#   #test "should get new" do
#    # get :new
#     #assert_response :success
#   #end

#   #test "should create user" do
#    # assert_difference('user.count') do
#     #  post :create, user: { email: @user.email, password: @user.password }
#     #end

#     #assert_redirected_to user_path(assigns(:user))
#   #end

#   #test "should show user" do
#    # get :show, id: @user
#     #assert_response :success
#   #end

#   #test "should get edit" do
#    # get :edit, id: @user
#     #assert_response :success
#   #end

#   #test "should update user" do
#    # patch :update, id: @user, user: { email: @user.email, password: @user.password }
#    # assert_redirected_to user_path(assigns(:user))
#   #end

#   #test "should destroy user" do
#    # assert_difference('user.count', -1) do
#     #  delete :destroy, id: @user
#     #end

#     #assert_redirected_to users_path
#   #end
 end

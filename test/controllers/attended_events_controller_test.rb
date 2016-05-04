# == Schema Information
#
# Table name: attended_events
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  event_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class AttendedEventsControllerTest < ActionController::TestCase
  setup do
    @attended_event = attended_events(:one)
  end

  # test "should get index" do
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:attended_events)
  # end

  # test "should get new" do
  #   get :new
  #   assert_response :success
  # end

  # test "should create attended_event" do
  #   assert_difference('AttendedEvent.count') do
  #     post :create, attended_event: { event_id: @attended_event.event_id, user_id: @attended_event.user_id }
  #   end

  #   assert_redirected_to attended_event_path(assigns(:attended_event))
  # end

  # test "should show attended_event" do
  #   get :show, id: @attended_event
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get :edit, id: @attended_event
  #   assert_response :success
  # end

  # test "should update attended_event" do
  #   patch :update, id: @attended_event, attended_event: { event_id: @attended_event.event_id, user_id: @attended_event.user_id }
  #   assert_redirected_to attended_event_path(assigns(:attended_event))
  # end

  # test "should destroy attended_event" do
  #   assert_difference('AttendedEvent.count', -1) do
  #     delete :destroy, id: @attended_event
  #   end

  #   assert_redirected_to attended_events_path
  # end
end

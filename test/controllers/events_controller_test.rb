# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  event_date  :date
#  event_time  :time
#  validity    :boolean
#  image       :string
#  link        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  person_id   :integer
#

require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  setup do
    sign_in User.first
    @event = events(:free_pizza)
  end

  # test "should get index" do
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:events)
  # end

  # test "should get new" do
  #   get :new
  #   assert_response :success
  # end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, event: { description: @event.description, event_date: @event.event_date, event_time: @event.event_time, image: @event.image, link: @event.link, title: @event.title, validity: @event.validity }
    end

    assert_redirected_to event_path(assigns(:event))
  end

  # test "should show event" do
  #   get :show, id: @event
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get :edit, id: @event
  #   assert_response :success
  # end

  test "should update event" do
    patch :update, id: @event, event: { description: @event.description, event_date: @event.event_date, event_time: @event.event_time, image: @event.image, link: @event.link, title: @event.title, validity: @event.validity }
    assert_redirected_to event_path(assigns(:event))
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete :destroy, id: @event
    end
    assert_redirected_to events_path
  end
end

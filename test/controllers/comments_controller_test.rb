# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  comment    :text
#  score      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_id   :integer
#  person_id  :integer
#

require 'test_helper'

class CommentsControllerTest < ActionController::TestCase

  test "should create comment" do
    @comment = comments (:tarika)
      post :create, comment: { comment: @comment.comment, score: @comment.score }
    assert_redirected_to comment_path(assigns(:comment))
  end

  
  # test "should get index" do
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:comments)
  # end

  # test "should get new" do
  #   get :new
  #   assert_response :success
  # end

  # test "should create comment" do
  #   assert_difference('Comment.count') do
  #     post :create, comment: { comment: @comment.comment, score: @comment.score }
  #   end

  #   assert_redirected_to comment_path(assigns(:comment))
  # end

  # test "should show comment" do
  #   get :show, id: @comment
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get :edit, id: @comment
  #   assert_response :success
  # end

  # test "should update comment" do
  #   patch :update, id: @comment, comment: { comment: @comment.comment, score: @comment.score }
  #   assert_redirected_to comment_path(assigns(:comment))
  # end

  # test "should destroy comment" do
  #   assert_difference('Comment.count', -1) do
  #     delete :destroy, id: @comment
  #   end

  #   assert_redirected_to comments_path
  # end
end

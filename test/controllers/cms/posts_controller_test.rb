require 'test_helper'

class Cms::PostsControllerTest < ActionController::TestCase
  setup do
    @cms_post = cms_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cms_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cms_post" do
    assert_difference('Cms::Post.count') do
      post :create, cms_post: { content: @cms_post.content, date: @cms_post.date, post_category_id: @cms_post.post_category_id, publish: @cms_post.publish, resume: @cms_post.resume, slider: @cms_post.slider, thumb: @cms_post.thumb, thumb_active: @cms_post.thumb_active, title: @cms_post.title }
    end

    assert_redirected_to cms_post_path(assigns(:cms_post))
  end

  test "should show cms_post" do
    get :show, id: @cms_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cms_post
    assert_response :success
  end

  test "should update cms_post" do
    patch :update, id: @cms_post, cms_post: { content: @cms_post.content, date: @cms_post.date, post_category_id: @cms_post.post_category_id, publish: @cms_post.publish, resume: @cms_post.resume, slider: @cms_post.slider, thumb: @cms_post.thumb, thumb_active: @cms_post.thumb_active, title: @cms_post.title }
    assert_redirected_to cms_post_path(assigns(:cms_post))
  end

  test "should destroy cms_post" do
    assert_difference('Cms::Post.count', -1) do
      delete :destroy, id: @cms_post
    end

    assert_redirected_to cms_posts_path
  end
end

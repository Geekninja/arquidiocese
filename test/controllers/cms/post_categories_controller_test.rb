require 'test_helper'

class Cms::PostCategoriesControllerTest < ActionController::TestCase
  setup do
    @cms_post_category = cms_post_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cms_post_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cms_post_category" do
    assert_difference('Cms::PostCategory.count') do
      post :create, cms_post_category: { description: @cms_post_category.description, name: @cms_post_category.name, status: @cms_post_category.status }
    end

    assert_redirected_to cms_post_category_path(assigns(:cms_post_category))
  end

  test "should show cms_post_category" do
    get :show, id: @cms_post_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cms_post_category
    assert_response :success
  end

  test "should update cms_post_category" do
    patch :update, id: @cms_post_category, cms_post_category: { description: @cms_post_category.description, name: @cms_post_category.name, status: @cms_post_category.status }
    assert_redirected_to cms_post_category_path(assigns(:cms_post_category))
  end

  test "should destroy cms_post_category" do
    assert_difference('Cms::PostCategory.count', -1) do
      delete :destroy, id: @cms_post_category
    end

    assert_redirected_to cms_post_categories_path
  end
end

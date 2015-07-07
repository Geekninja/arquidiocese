require 'test_helper'

class Cms::PageCategoriesControllerTest < ActionController::TestCase
  setup do
    @cms_page_category = cms_page_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cms_page_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cms_page_category" do
    assert_difference('Cms::PageCategory.count') do
      post :create, cms_page_category: { description: @cms_page_category.description, name: @cms_page_category.name, status: @cms_page_category.status }
    end

    assert_redirected_to cms_page_category_path(assigns(:cms_page_category))
  end

  test "should show cms_page_category" do
    get :show, id: @cms_page_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cms_page_category
    assert_response :success
  end

  test "should update cms_page_category" do
    patch :update, id: @cms_page_category, cms_page_category: { description: @cms_page_category.description, name: @cms_page_category.name, status: @cms_page_category.status }
    assert_redirected_to cms_page_category_path(assigns(:cms_page_category))
  end

  test "should destroy cms_page_category" do
    assert_difference('Cms::PageCategory.count', -1) do
      delete :destroy, id: @cms_page_category
    end

    assert_redirected_to cms_page_categories_path
  end
end

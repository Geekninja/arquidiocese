require 'test_helper'

class Cms::ParishesControllerTest < ActionController::TestCase
  setup do
    @cms_parish = cms_parishes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cms_parishes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cms_parish" do
    assert_difference('Cms::Parish.count') do
      post :create, cms_parish: { address: @cms_parish.address, content: @cms_parish.content, name: @cms_parish.name, phone: @cms_parish.phone, priest: @cms_parish.priest, publish: @cms_parish.publish, resume: @cms_parish.resume, thumb: @cms_parish.thumb, thumbnail: @cms_parish.thumbnail, thumbnail_active: @cms_parish.thumbnail_active }
    end

    assert_redirected_to cms_parish_path(assigns(:cms_parish))
  end

  test "should show cms_parish" do
    get :show, id: @cms_parish
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cms_parish
    assert_response :success
  end

  test "should update cms_parish" do
    patch :update, id: @cms_parish, cms_parish: { address: @cms_parish.address, content: @cms_parish.content, name: @cms_parish.name, phone: @cms_parish.phone, priest: @cms_parish.priest, publish: @cms_parish.publish, resume: @cms_parish.resume, thumb: @cms_parish.thumb, thumbnail: @cms_parish.thumbnail, thumbnail_active: @cms_parish.thumbnail_active }
    assert_redirected_to cms_parish_path(assigns(:cms_parish))
  end

  test "should destroy cms_parish" do
    assert_difference('Cms::Parish.count', -1) do
      delete :destroy, id: @cms_parish
    end

    assert_redirected_to cms_parishes_path
  end
end

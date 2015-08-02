require 'test_helper'

class Cms::PriestsControllerTest < ActionController::TestCase
  setup do
    @cms_priest = cms_priests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cms_priests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cms_priest" do
    assert_difference('Cms::Priest.count') do
      post :create, cms_priest: { content: @cms_priest.content, publish: @cms_priest.publish, resume: @cms_priest.resume, thumb: @cms_priest.thumb, thumb_active: @cms_priest.thumb_active, title: @cms_priest.title, who: @cms_priest.who }
    end

    assert_redirected_to cms_priest_path(assigns(:cms_priest))
  end

  test "should show cms_priest" do
    get :show, id: @cms_priest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cms_priest
    assert_response :success
  end

  test "should update cms_priest" do
    patch :update, id: @cms_priest, cms_priest: { content: @cms_priest.content, publish: @cms_priest.publish, resume: @cms_priest.resume, thumb: @cms_priest.thumb, thumb_active: @cms_priest.thumb_active, title: @cms_priest.title, who: @cms_priest.who }
    assert_redirected_to cms_priest_path(assigns(:cms_priest))
  end

  test "should destroy cms_priest" do
    assert_difference('Cms::Priest.count', -1) do
      delete :destroy, id: @cms_priest
    end

    assert_redirected_to cms_priests_path
  end
end

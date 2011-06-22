require 'test_helper'

class HeadingsControllerTest < ActionController::TestCase
  setup do
    @heading = headings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:headings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create heading" do
    assert_difference('Heading.count') do
      post :create, :heading => @heading.attributes
    end

    assert_redirected_to heading_path(assigns(:heading))
  end

  test "should show heading" do
    get :show, :id => @heading.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @heading.to_param
    assert_response :success
  end

  test "should update heading" do
    put :update, :id => @heading.to_param, :heading => @heading.attributes
    assert_redirected_to heading_path(assigns(:heading))
  end

  test "should destroy heading" do
    assert_difference('Heading.count', -1) do
      delete :destroy, :id => @heading.to_param
    end

    assert_redirected_to headings_path
  end
end

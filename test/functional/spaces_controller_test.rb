require 'test_helper'

class SpacesControllerTest < ActionController::TestCase
  setup do
    @space = spaces(:agilion)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spaces)
  end

  test "should create space" do
    assert_difference('Space.count') do
      post :create, space: {  }
    end

    assert_redirected_to root_url
  end

  test "should show space" do
    get :show, id: @space
    assert_response :success
  end

end

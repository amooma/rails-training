require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should show the hello world example content" do
    get :index
    assert_select 'h1'
    assert_select 'h1', "Hello World!"
    assert_select 'p'
    assert_select 'p', "This is just a training example."
  end

  test "should show the about example content" do
    get :about
    assert_select 'h1'
    assert_select 'h1', "About"
    assert_select 'p'
    assert_select 'p', "Some basic info about this project."
  end

end

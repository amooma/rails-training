require 'test_helper'

class GameControllerTest < ActionController::TestCase
  test "should get ping" do
    get :ping
    assert_response :success
  end

  test "should get pong" do
    get :pong
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should show the index page content" do
    get :index
    assert_select 'h1'
    assert_select 'h1', "Welcome!"
    assert_select 'p'
    assert_select 'p', "Your choices:"
    assert_select 'ul'
    assert_select 'ul' do
      assert_select 'li'
      assert_select 'li', 'Ping'
      assert_select 'li', 'Pong'
      assert_select("a[href=/game/ping]") do |elements|
        assert_equal elements.count, 1
      end
      assert_select("a[href=/game/pong]") do |elements|
        assert_equal elements.count, 1
      end            
    end
  end

  test "should show the ping page content" do
    get :ping
    assert_select 'h1'
    assert_select 'h1', "Ping!"
    assert_select 'ul'
    assert_select 'ul' do
      assert_select 'li'
      assert_select 'li', 'Pong'
      assert_select("a[href=/game/pong]") do |elements|
        assert_equal elements.count, 1
      end
      assert_select 'a[href=/game/ping]', false
    end
  end

  test "should show the pong page content" do
    get :pong
    assert_select 'h1'
    assert_select 'h1', "Pong!"
    assert_select 'ul'
    assert_select 'ul' do
      assert_select 'li'
      assert_select 'li', 'Ping'
      assert_select("a[href=/game/ping]") do |elements|
        assert_equal elements.count, 1
      end
      assert_select 'a[href=/game/pong]', false
    end
  end

  # Test the routes
  #
  test "should route to game#[index|ping|pong]" do
    assert_routing '/game/index', {controller: "game", action: "index"}
    assert_routing '/game/ping', {controller: "game", action: "ping"}
    assert_routing '/game/pong', {controller: "game", action: "pong"}
  end

end

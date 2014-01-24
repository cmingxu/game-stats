require 'test_helper'

class FtesControllerTest < ActionController::TestCase
  setup do
    @fte = ftes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ftes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fte" do
    assert_difference('Fte.count') do
      post :create, fte: { app_id: @fte.app_id, pass_time: @fte.pass_time, player_id: @fte.player_id, step: @fte.step }
    end

    assert_redirected_to fte_path(assigns(:fte))
  end

  test "should show fte" do
    get :show, id: @fte
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fte
    assert_response :success
  end

  test "should update fte" do
    patch :update, id: @fte, fte: { app_id: @fte.app_id, pass_time: @fte.pass_time, player_id: @fte.player_id, step: @fte.step }
    assert_redirected_to fte_path(assigns(:fte))
  end

  test "should destroy fte" do
    assert_difference('Fte.count', -1) do
      delete :destroy, id: @fte
    end

    assert_redirected_to ftes_path
  end
end

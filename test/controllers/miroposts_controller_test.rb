require 'test_helper'

class MiropostsControllerTest < ActionController::TestCase
  setup do
    @miropost = miroposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:miroposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create miropost" do
    assert_difference('Miropost.count') do
      post :create, miropost: { content: @miropost.content, user_id: @miropost.user_id }
    end

    assert_redirected_to miropost_path(assigns(:miropost))
  end

  test "should show miropost" do
    get :show, id: @miropost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @miropost
    assert_response :success
  end

  test "should update miropost" do
    patch :update, id: @miropost, miropost: { content: @miropost.content, user_id: @miropost.user_id }
    assert_redirected_to miropost_path(assigns(:miropost))
  end

  test "should destroy miropost" do
    assert_difference('Miropost.count', -1) do
      delete :destroy, id: @miropost
    end

    assert_redirected_to miroposts_path
  end
end

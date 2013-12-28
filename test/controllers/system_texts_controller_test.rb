require 'test_helper'

class SystemTextsControllerTest < ActionController::TestCase
  setup do
    @system_text = system_texts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:system_texts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create system_text" do
    assert_difference('SystemText.count') do
      post :create, system_text: { key: @system_text.key, value: @system_text.value }
    end

    assert_redirected_to system_text_path(assigns(:system_text))
  end

  test "should show system_text" do
    get :show, id: @system_text
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @system_text
    assert_response :success
  end

  test "should update system_text" do
    patch :update, id: @system_text, system_text: { key: @system_text.key, value: @system_text.value }
    assert_redirected_to system_text_path(assigns(:system_text))
  end

  test "should destroy system_text" do
    assert_difference('SystemText.count', -1) do
      delete :destroy, id: @system_text
    end

    assert_redirected_to system_texts_path
  end
end

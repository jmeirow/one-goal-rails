require 'test_helper'

class WebResourcesControllerTest < ActionController::TestCase
  setup do
    @web_resource = web_resources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:web_resources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create web_resource" do
    assert_difference('WebResource.count') do
      post :create, web_resource: { declined_reason: @web_resource.declined_reason, description: @web_resource.description, recommending_member: @web_resource.recommending_member, status: @web_resource.status, url: @web_resource.url }
    end

    assert_redirected_to web_resource_path(assigns(:web_resource))
  end

  test "should show web_resource" do
    get :show, id: @web_resource
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @web_resource
    assert_response :success
  end

  test "should update web_resource" do
    patch :update, id: @web_resource, web_resource: { declined_reason: @web_resource.declined_reason, description: @web_resource.description, recommending_member: @web_resource.recommending_member, status: @web_resource.status, url: @web_resource.url }
    assert_redirected_to web_resource_path(assigns(:web_resource))
  end

  test "should destroy web_resource" do
    assert_difference('WebResource.count', -1) do
      delete :destroy, id: @web_resource
    end

    assert_redirected_to web_resources_path
  end
end

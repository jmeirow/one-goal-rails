require 'test_helper'

class ActionStepsControllerTest < ActionController::TestCase
  setup do
    @action_step = action_steps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:action_steps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create action_step" do
    assert_difference('ActionStep.count') do
      post :create, action_step: { completed: @action_step.completed, description: @action_step.description, goal_id: @action_step.goal_id, target_date: @action_step.target_date }
    end

    assert_redirected_to action_step_path(assigns(:action_step))
  end

  test "should show action_step" do
    get :show, id: @action_step
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @action_step
    assert_response :success
  end

  test "should update action_step" do
    patch :update, id: @action_step, action_step: { completed: @action_step.completed, description: @action_step.description, goal_id: @action_step.goal_id, target_date: @action_step.target_date }
    assert_redirected_to action_step_path(assigns(:action_step))
  end

  test "should destroy action_step" do
    assert_difference('ActionStep.count', -1) do
      delete :destroy, id: @action_step
    end

    assert_redirected_to action_steps_path
  end
end

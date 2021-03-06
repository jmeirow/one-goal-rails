class GoalsController < ApplicationController
  before_action :set_goal, only: [:show, :edit, :update, :destroy]


  before_filter :check_for_member




  def check_for_member
    if Member.where("user_id = ? ", session['user_id']).count == 0
      redirect_to new_member_path, :notice => SystemText.text_for_key('MEMBER_INFO_REQUIRED_BEFORE_GOAL')
    end
  end

  
  # GET /goals
  # GET /goals.json
  def index
    @goals = []
  end

  # GET /goals/1
  # GET /goals/1.json
  def show
  end

  # GET /goals/new
  def new
    @goal = Goal.where("user_id = ?", session[:user_id].to_i).first
    @goal = Goal.new if @goal.nil?  
  end

  # GET /goals/1/edit
  def edit
  end

  # POST /goals
  # POST /goals.json
  def create

    @goal = Goal.new(goal_params)
    @goal.user_id = session['user_id'].to_i


    respond_to do |format|
      if @goal.save
        format.html { redirect_to new_goal_path, notice: 'Goal was successfully created.' }
        format.json { render action: 'show', status: :created, location: @goal }
      else
        format.html { render action: 'new' }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goals/1
  # PATCH/PUT /goals/1.json
  def update
    respond_to do |format|
      if @goal.update(goal_params)
        format.html { redirect_to new_goal_path, notice: 'Goal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goals/1
  # DELETE /goals/1.json
  def destroy
    @goal.destroy
    respond_to do |format|
      format.html { redirect_to goals_url }
      format.json { head :no_content }
    end
  end





  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal
      @goal = Goal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goal_params
      params.require(:goal).permit(:user_id, :description, :note)
    end
end

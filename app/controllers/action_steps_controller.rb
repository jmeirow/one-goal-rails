class ActionStepsController < ApplicationController
  before_action :set_action_step, only: [:show, :edit, :update, :destroy]

  # GET /action_steps
  # GET /action_steps.json
  def index
    @action_steps = User.action_steps
  end

  # GET /action_steps/1
  # GET /action_steps/1.json
  def show
  end

  # GET /action_steps/new
  def new
    @action_step = ActionStep.new
  end

  # GET /action_steps/1/edit
  def edit
  end

  # POST /action_steps
  # POST /action_steps.json
  def create
    @action_step = ActionStep.new(action_step_params)

    respond_to do |format|
      if @action_step.save
        format.html { redirect_to @action_step, notice: 'Action step was successfully created.' }
        format.json { render action: 'show', status: :created, location: @action_step }
      else
        format.html { render action: 'new' }
        format.json { render json: @action_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /action_steps/1
  # PATCH/PUT /action_steps/1.json
  def update
    respond_to do |format|
      if @action_step.update(action_step_params)
        format.html { redirect_to @action_step, notice: 'Action step was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @action_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /action_steps/1
  # DELETE /action_steps/1.json
  def destroy
    @action_step.destroy
    respond_to do |format|
      format.html { redirect_to action_steps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_action_step
      @action_step = ActionStep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def action_step_params
      params.require(:action_step).permit(:goal_id, :description, :target_date, :completed)
    end
end

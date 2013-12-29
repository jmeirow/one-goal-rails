class SystemTextsController < ApplicationController
  before_action :set_system_text, only: [:show, :edit, :update, :destroy]

  before_filter :check_for_admin






  # GET /system_texts
  # GET /system_texts.json
  def index
    @system_texts = SystemText.order(:key).page params[:page]
  end

  # GET /system_texts/1
  # GET /system_texts/1.json
  def show
  end

  # GET /system_texts/new
  def new
    @system_text = SystemText.new
  end

  # GET /system_texts/1/edit
  def edit
  end

  # POST /system_texts
  # POST /system_texts.json
  def create
    @system_text = SystemText.new(system_text_params)

    respond_to do |format|
      if @system_text.save
        format.html { redirect_to system_texts_path, notice: 'System text was successfully created.' }
        format.json { render action: 'show', status: :created, location: @system_text }
      else
        format.html { render action: 'new' }
        format.json { render json: @system_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /system_texts/1
  # PATCH/PUT /system_texts/1.json
  def update
    respond_to do |format|
      if @system_text.update(system_text_params)
        format.html { redirect_to system_texts_path, notice: 'System text was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @system_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /system_texts/1
  # DELETE /system_texts/1.json
  def destroy
    @system_text.destroy
    respond_to do |format|
      format.html { redirect_to system_texts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_system_text
      @system_text = SystemText.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def system_text_params
      params.require(:system_text).permit(:key, :value)
    end


    def check_for_admin
      is_admin = Administrator.all.collect{|x| x.user_id}.include?(session['user_id'])
      redirect_to new_goal_path , :notice => "You are NOT an administrator!" unless is_admin
    end


end

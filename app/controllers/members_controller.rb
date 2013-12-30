

class MembersController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy]

  # GET /members
  # GET /members.json
  def index
    #@members = Member.all
  end

  # GET /members/1
  # GET /members/1.json
  def show
  end

  # GET /members/new
  def new
    @member = Member.where("user_id = ?", session[:user_id].to_i).first
    @member = Member.new if @member.nil? 
  end

  # GET /members/1/edit
  def edit
    @member = Member.where("user_id = ?", session[:user_id].to_i).first
    @member = Member.new if @member.nil? 
  end

  # POST /members
  # POST /members.json
  def create
    
    @member = Member.new(member_params)
    @member.user_id =  session['user_id'].to_i

        

    respond_to do |format|
      if @member.save
        format.html { redirect_to new_goal_path, notice: 'Time to enter goal information.' }
        format.json { render action: 'show', status: :created, location: @member }
      else
        format.html { render action: 'new' }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /members/1
  # PATCH/PUT /members/1.json
  def update
    respond_to do |format|
      if @member.update(member_params)
        format.html { redirect_to edit_member_path, notice: 'Member was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
    @member.destroy
    respond_to do |format|
      format.html { redirect_to members_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.where("user_id  = ?", session['user_id'])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
      params.require(:member).permit(:first_name, :last_name, :phone_number, :wants_a_buddy, :club_name)
    end
end

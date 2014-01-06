class WebResourcesController < ApplicationController
  before_action :set_web_resource, only: [:show, :edit, :update, :destroy]


  before_filter :set_user_is_admin

  # GET /web_resources
  # GET /web_resources.json
  def index
    @web_resources = WebResource.where("status = ?", WebResource.approved).order(:description).page params[:page]
  end


  def pending
    #@user_is_admin = Administrator.all.collect{|admin| admin.user_id }.include?(session['user_id'])  
    if @user_is_admin
      @pending_resources = WebResource.where("status = ?", WebResource.pending).order(:description).page params[:page]
    else
      @pending_resources = [] 
    end
  end


  def review
    #@user_is_admin = Administrator.all.collect{|admin| admin.user_id }.include?(session['user_id'])  
    @web_resource = WebResource.find(params['id'].to_i)
    #redirect_to edit_web_resource_path(params[:id])
    render action: "edit"  
  end

  # GET /web_resources/1
  # GET /web_resources/1.json
  def show
  end

  # GET /web_resources/new
  def new
    @web_resource = WebResource.new
  end

  # GET /web_resources/1/edit
  def edit
  end

  # POST /web_resources
  # POST /web_resources.json
  def create
    @web_resource = WebResource.new(web_resource_params)
    @web_resource.recommending_member_id = Member.where("user_id = ?", session['user_id'].to_i).first.id
    @web_resource.status = WebResource.pending


    respond_to do |format|
      if @web_resource.save
        format.html { redirect_to @web_resource, notice: 'Web resource was successfully created.' }
        format.json { render action: 'show', status: :created, location: @web_resource }
      else
        format.html { render action: 'new' }
        format.json { render json: @web_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /web_resources/1
  # PATCH/PUT /web_resources/1.json
  def update
    respond_to do |format|
      if @web_resource.update(web_resource_params)
        format.html { redirect_to web_resources_path notice: 'Web resource was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @web_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web_resources/1
  # DELETE /web_resources/1.json
  def destroy
    @web_resource.destroy
    respond_to do |format|
      format.html { redirect_to web_resources_url }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_web_resource
      @web_resource = WebResource.find(params[:id])
    end

    def set_user_is_admin
      @user_is_admin = Administrator.all.collect{|admin| admin.user_id }.include?(session['user_id'])  
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def web_resource_params
      params.require(:web_resource).permit(:url, :description, :recommending_member, :status, :declined_reason)
    end
end

class PasswordResetsController < ApplicationController
  def new

  end

  def create
    user = User.find_by_email(params[:email])
    user.send_password_reset if user
    redirect_to '/login', :notice => "Email sent with password reset instructions."
  end

  def edit
    @user = User.find_by_password_reset_token!(params[:id])
  end


  def update
    @user = User.find_by_password_reset_token!(params[:id])
    if @user.password_reset_sent_at < 2.hours.ago
      redirect_to new_password_reset_path, :alert => "Password reset has expired."
    elsif @user.update(password_resets_params)
      redirect_to '/login', :notice => "Password has been reset."
    else
      render :edit
    end
  end

  


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_password_resets
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def password_resets_params
      params.require(:user).permit(:password, :password_confirmation, :id  )
    end

end

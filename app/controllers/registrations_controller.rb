class RegistrationsController < Devise::RegistrationsController

  def create
    if User.find_by email: params[:user][:email]
      super
    else
      flash[:alert] = "user must be invited to sign up"
      redirect_to root_path
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
  end
  
end
class AdminController < ApplicationController
  before_action :authorize_current_user!
  private

  def authorize_current_user!
    if current_user.member?
      flash[:alert] = "Member has no access"
      redirect_to root_path
    end
  end

  #   unless can? :manage, Admin
  #     flash[:alert] = "Member has no access"
  #     redirect_to root_path
  #   end
  # end
end

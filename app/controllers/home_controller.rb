class HomeController < ApplicationController
  def index
    # binding.pry
    if user_signed_in?
      redirect_to posts_path
    else
      redirect_to new_user_session_path
    end
  end
end

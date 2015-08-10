class UsersController < ApplicationController
  def new
    if current_user
      redirect_to profile_path
    else
    @user = User.new
    end
  end

  def create
    # redirect user if already logged in
    if current_user
      redirect_to profile_path
    else
      user = User.new(user_params)
      if user.save
        session[:user_id] = user.id
        flash[:notice] = "Successfully signed up."
        redirect_to profile_path
      else
        flash[:error] = user.errors.full_messages.join(', ')
        redirect_to signup_path
      end
    end
  end

  def show
    @user = User.find(params[:id])
    #render :show
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end

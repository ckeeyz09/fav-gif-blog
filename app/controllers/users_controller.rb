class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # create a user with these params
    @user = User.new(user_params)
    # save the user
    if @user.save
      # redirect to users#show
      redirect_to new_user_path(@user)
    else
      redirect_to :back
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

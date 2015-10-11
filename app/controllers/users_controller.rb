class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "New Employee Created!"

      redirect_to @user_index_path
    else
      render 'new'
    end
  end

  def edit
  end

  def show
    @user = User.find(params[:id])

  end

  def delete
  end

private

  def user_params
    params.require(:user).permit(:name)
  end

end

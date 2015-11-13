class UsersController < ApplicationController
  def index
    @users = User.all  
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      respond_to do |format|
        format.html { redirect_to users_path }
      end
    end
  end

  def edit
    
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destory
  end

  private
  def user_params
    params.require(:user).permit(:firstname, :lastname, :email)
  end
end
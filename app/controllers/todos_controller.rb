class TodosController < ApplicationController
  before_action :set_user

	def index
    @todos = @user.todos.all
  end

  def show
    @todo = @user.todos.find(params[:id])
  end

  def new
    @todo = @user.todos.new
  end

  def create
    @todo = @user.todos.new(todos_params)
    if @todo.save
      respond_to |format|
        format.html { redirect_to users_path }
    end
  end

  def edit 
    @todo = @user.todos.find(params[:id]) 
  end

  def update
    @todo = @user.todos.find(params[:id])
  end

  def destroy
    @todo = @user.todos.destory(params[:id])    
  end

  private
  def set_user
    @user = User.find(params[:user_id])
  end

  def todos_params
    params.require(:todo).permit(:title, :description, :completed, :user_id)
  end
end
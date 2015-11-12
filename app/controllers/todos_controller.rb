class TodosController < ApplicationController::Base


	def index
    @todos = Todos.all
  end

  def show
    @todo = Todos.find(params[:id])
  end

  def create
    @todo = Todos.new()
    
  end

  def destroy
    @todo = Todos.destory(params[:id])    
  end

  def edit 
    @todo = Todos.find(params[:id]) 
  end

  private
  def todos_params
    params.require(:todos).permit(:title, :description, :completed)
  end

end
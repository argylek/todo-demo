class Api::TodosController < ApplicationController
  def index
    render json: Todo.order(created_at: :desc)
  end

  def create
    todo = Todo.create(name: params[:name])
    render json: todo
  end

  

end

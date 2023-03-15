class TodosController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    render json: Todo.all
  end

  def create
    todos = Todo.create(todo_params)
    render json: todos
  end

  def update
    todo = Todo.find_by(id: params[:id])
    todo.update(todo_params)
    render json: { message: 'Message updated successfully' }
  end

  def destroy
    todo = Todo.find_by(id: params[:id])
    todo.destroy
    head :no_content
  end

  private

  def todo_params
    params.permit(:title, :description, :priority)
  end
end

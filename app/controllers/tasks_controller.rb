class TasksController < ApplicationController
  # Tasks controller

  def new
    @task = Task.new
  end

  def create
    # raise
    @task = Task.new(params.require(:task).permit(:title, :details))
    @task.save!
    redirect_to task_path(@task)
  end

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end
end

class TasksController < ApplicationController
  before_action :set_task, only: [:update, :destroy, :show, :edit]

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def show
  end

  def index
    @tasks = Task.all
  end

  def update
    @task.update(task_params)
  end

  def destroy
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :details)
  end

end

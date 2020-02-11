class TasksController < ApplicationController
  before_action :set_task, only: [:update, :destroy, :show, :edit]

  def create
  end

  def show
  end

  def index
    @tasks = Task.all
  end

  def update
  end

  def destroy
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end
end

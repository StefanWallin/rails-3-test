class TasksController < ApplicationController
  def index
      @task = Task.new
      @tasks = Task.all
  end
  def create
    Task.create params[:task]
    redirect_to :back, :notice => 'Your task has been created.'
  end
  def edit
    @task = Task.find params[:id]
  end
  def update
    task = Task.find params[:id]
    if task.update_attributes params[:task]
      redirect_to tasks_path, :notice => 'Your task has successfully been updated.'
    else
      redirect_to :back, :alert => 'There was an error updating your task.'
    end
  end
  def destroy
    Task.destroy params[:id]
    redirect_to tasks_path, :notice => 'Task has been deleted.'
  end
end

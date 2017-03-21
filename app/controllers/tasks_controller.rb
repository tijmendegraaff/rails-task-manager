class TasksController < ApplicationController
  before_action :load_task, only: [:show, :edit, :update, :destroy]

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    # @task.done = boolean_value_for_checkbox_inputs(task_params[:done])
    @task.save
    redirect_to tasks_path
  end

  def edit
  end

  def update
    # @task.done = boolean_value_for_checkbox_inputs(task_params[:done])
    @task.update(task_params)
    redirect_to task_path
  end

  def index
    @tasks = Task.all
  end

  def show
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :done)
  end

  def load_task
    @task = Task.find(params[:id])
  end
  # def boolean_value_for_checkbox_inputs(string)
  #   return true if ["1", 1, "true", true].include?(string)
  #   return false if ["0", 0, "false", false].include?(string)
  # end

end

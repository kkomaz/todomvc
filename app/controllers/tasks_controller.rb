class TasksController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @task = @list.tasks.create(task_params)

    respond_to do |f|
      f.html do 
        redirect_to @list
      end
      f.js {}
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    respond_to do |f|
      f.html {}
      f.js {}
    end
  end

  private

  def task_params
    params.require(:task).permit(:description)
  end
end
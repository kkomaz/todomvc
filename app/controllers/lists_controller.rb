class ListsController < ApplicationController

  def index
    @lists = List.all.order(:updated_at => "DESC")
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      respond_to do |f|
        f.html {}
        f.js {}
      end
    else
      render 'index'
    end
  end

  def show 
    @list = List.find(params[:id])
    @tasks = @list.tasks.reverse
    @task = Task.new
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    respond_to do |f|
      f.html {}
      f.js {}
    end
  end

  private
    def list_params
      params.require(:list).permit(:id, :title)
    end

end
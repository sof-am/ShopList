class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
    @list.user_id = params[:user_id]
  end

  def create
    @list = List.new
    @list.image = params[:image]
    @list.user_id = params[:user_id]
    @list.list_name = params[:list_name]

    if @list.save
      redirect_to "/kitchen", :notice => "Place created successfully."
    else
      render 'new'
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])

    @list.image = params[:image]
    @list.user_id = params[:user_id]
    @list.list_name = params[:list_name]

    if @list.save
      redirect_to "/kitchen", :notice => "Place updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @list = List.find(params[:id])

    @list.destroy

    redirect_to "/kitchen", :notice => "Place deleted."
  end
end

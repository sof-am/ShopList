class FoodsController < ApplicationController
  def consumption_subtract
    @food = Food.find(params[:id])
    @food.current_number = @food.current_number - 1
    @food.save
    @foods = Food.all
    redirect_to "/consumption"
  end

  def consumption_add
    @food = Food.find(params[:id])
    @food.current_number = @food.current_number + 1
    @food.save
    @foods = Food.all
    redirect_to "/consumption"
  end

  def shoplist
    @foods = Food.all
  end

  def consumption
    @foods = Food.all
  end

  def index
    @foods = Food.all
  end

  def show
    @food = Food.find(params[:id])
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new
    @food.list_id = params[:list_id]
    @food.user_id = params[:user_id]
    @food.ideal_number = params[:ideal_number]
    @food.safety_level = params[:safety_level]
    @food.current_number = params[:current_number]
    @food.image = params[:image]
    @food.name = params[:name]

    if @food.save
      redirect_to "/foods", :notice => "Food created successfully."
    else
      render 'new'
    end
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    @food = Food.find(params[:id])

    @food.list_id = params[:list_id]
    @food.user_id = params[:user_id]
    @food.ideal_number = params[:ideal_number]
    @food.safety_level = params[:safety_level]
    @food.current_number = params[:current_number]
    @food.image = params[:image]
    @food.name = params[:name]

    if @food.save
      redirect_to "/foods", :notice => "Food updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @food = Food.find(params[:id])

    @food.destroy

    redirect_to "/foods", :notice => "Food deleted."
  end
end

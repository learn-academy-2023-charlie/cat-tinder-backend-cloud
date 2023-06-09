class VillainsController < ApplicationController

  def index
    villains = Villain.all
    render json: villains
  end

  def create
    villain = Villain.create(villain_params)
    render json: villain
  end
  
  def update
  end

  def destroy
  end
  
  private
  def villain_params
    params.require(:villain).permit(:name, :age, :hobbies, :power, :about, :evil_scheme, :image)
  end

end

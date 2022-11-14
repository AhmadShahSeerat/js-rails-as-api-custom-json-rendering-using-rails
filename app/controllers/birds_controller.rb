class BirdsController < ApplicationController
  def index
    birds = Bird.all
    # render json: birds, only: [:id, :name, :species]
    # render json: birds, except: [:created_at, :updated_at]
    render json: birds.to_json(except: [:created_at, :updated_at])
    # render json: birds, except: [:created_at, :updated_at]

  end

  def show
    bird = Bird.find_by(id: params[:id])
    if bird
    render json: {id: bird.id, name: bird.name, species: bird.species}
    else  
   render json: {TEENGTAAANG: " Sorry no birth by this entery, try a diff number"}  
end
    # render json: bird.slice(:id, :name, :species)
  end
end


class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.update(pet_params)
    redirect_to pet_path(@pet)
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.save
    redirect_to pets_path # index
    # redirect_to pet_path(@pet) # show
  end

  def destroy  # j'ai ajouté ça juste pour completer les méthodes #lien est dans show.html.erb
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_path, status: :see_other
  end

  private
  def pet_params
    params.require(:pet).permit(:name, :address, :species, :date)
  end
end

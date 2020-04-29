class PetsController < ApplicationController


  get '/pets' do
    @pets = Pet.all
    erb :'/pets/index'
  end

  get '/pets/new' do
    @owners = Owner.all
    erb :'/pets/new'
  end

  post '/pets' do
<<<<<<< HEAD
    @pet = Pet.create(:name => params["pet_name"])
    if params["owner"]["name"].empty?
      @pet.owner_id = params["pet"]["owner_id"]
      @pet.save
    else
      @pet.owner = Owner.create(:name => params["owner"]["name"])
      @pet.save
    end
    # binding.pry
    redirect to "pets/#{@pet.id}"
  end

  get '/pets/:id/edit' do
    @owners = Owner.all
=======

    redirect to "pets/#{@pet.id}"
  end

  get '/pets/:id' do
>>>>>>> 84eaba2ffc7a2ce5be21e63a5f46fc218b436fbd
    @pet = Pet.find(params[:id])
    erb :'/pets/edit'
  end

  get '/pets/:id' do
    @pet = Pet.find_by_id(params[:id])
    erb :'/pets/show'
  end

  patch '/pets/:id' do
<<<<<<< HEAD

=======
>>>>>>> 84eaba2ffc7a2ce5be21e63a5f46fc218b436fbd

    @pet = Pet.find_by_id(params[:id])
    @pet.name = params["pet_name"]
    if params["owner"]["name"].empty?
      @pet.owner = Owner.find_by_id(params["owner"]["id"])
    else
      @pet.owner = Owner.create(:name => params["owner"]["name"])
    end
    @pet.save
    redirect to "pets/#{@pet.id}"
  end
end

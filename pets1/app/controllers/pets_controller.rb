class PetsController <ApplicationController


  def index
    @pets=Pet.all
    render 'index'
  end

  def add
   puts "Adding a new pet"
   render 'add'
  end

  def create
    puts "post request for adding a new pet"
    name=params[:name]
    pet_type=params[:type]
    breed=params[:breed]
    bio=params[:bio]
    Pet.create(name:name,pet_type:pet_type,breed:breed,bio:bio)
     redirect_to action:"index"
    #  render status:200, json:{}
  end

  def update
    @pet=Pet.find(params[:id])
    if request.method==="GET"
      return render "update"
    end

    name=params[:name]
    pet_type=params[:type]
    breed=params[:breed]
    bio=params[:bio]

    @pet.update(name:name,pet_type:pet_type,breed:breed,bio:bio)
    redirect_to action:"index"
  end

  def delete
     render html:"Delete pet #{params[:id]}"
  end

end

class PeopleController < ApplicationController
 def new
   @person = Person.new   
   @person.build_contact
   @person.build_pet
 end
 
 def create
  @person = Person.create(person_params)
  if @person.save
    redirect_to @person
  else
    render 'new'
  end
 end 
 
 def show
   @person = Person.find(params[:id])
 end
 
 def index
  @people = Person.all
 end
 
  def edit
   @person = Person.find(params[:id])
  end
  
  def update
    @person = Person.find(params[:id])
 
    if @person.update(person_params)
      redirect_to @person
    else
      render 'edit'
    end
  end
 
 private
  def person_params
    params.require(:person).permit(:first_name, :last_name, contact_attributes: [:phone, :mail], pet_attributes: [:name, :animal])
  end
  
end

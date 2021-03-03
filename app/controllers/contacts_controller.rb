class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    favourite_foods = []
    favourite_foods << params[:poison] if params[:poison].present?
    favourite_foods << params[:elixir_of_life] if params[:elixir_of_life].present?
    favourite_foods << params[:snails] if params[:snails].present?
    favourite_foods << params[:cockroaches] if params[:cockroaches].present?
    favourite_foods << params[:roasted_cat] if params[:roasted_cat].present?
    favourite_foods << params[:rare_cooked_spicy_bat] if params[:rare_cooked_spicy_bat].present?
    favourite_foods << params[:dog_soup] if params[:dog_soup].present?
    params[:contact][:favourite_foods] = favourite_foods.join(', ')
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to contacts_path
    else
      redirect_to new_contact_path
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :phone, :email, :gender, :favourite_foods)
  end

end
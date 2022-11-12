class ContactsController < ApplicationController
#    get '/contacts', to: 'contacts#index'
   def index
      render json: Contact.all, status: 202
   end

#   post '/contacts', to: 'contacts#create'
   def create
      contact = Contact.create(contact_params)
      if contact.valid?
         render json: contact, status: :created
      else
         render json: {error: 'Could not create'}
      end
   end

   private
   def contact_params
      params.permit(:firstName, :lastName, :email, :message)
   end
   
end

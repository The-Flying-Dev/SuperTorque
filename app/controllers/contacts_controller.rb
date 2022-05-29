class ContactsController < ApplicationController
  skip_before_action :authenticate_user!
  
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver 
      flash.now[:success] = 'Message sent!'     
      redirect_to new_contact_path, notice: "Thanks for getting intouch, we'll respond shortly!"    
      
    else
      flash.now[:error] = 'Could not send message'
      render :new
    end
  end
end

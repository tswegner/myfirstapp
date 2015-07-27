class StaticPagesController < ApplicationController

  def index
  end

  def landing_page
    @products = Product.limit(3)
  end 

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
#    ActionMailer::Base.mail(:from => @email, 
#      :to => 'tobiassimonwegner@gmail.com', 
#      :subject => "Contact message from #{@name}", 
#      :body => @message).deliver
    UserMailer.contact_form(@email, @name, @subject).deliver   
  end
  
end

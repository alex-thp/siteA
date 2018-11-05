class SessionsController < ApplicationController
  def new
  end
  def create
	  user = User.find_by(email: params[:session][:email].downcase)
	  if user && user.first_name = params[:session][:first_name]
			puts "good"
	  else
		  flash.now[:alert] = "Invalid email/password combination"
		  puts "Faux"
		  render 'new'
  end
end
end

# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string
#  password   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class UsersController < ApplicationController



  def new
  end

  def create

   # user = User.find_by(email: params[:session][:email])
    #pass = User.find_by(password: params[:session][:password])

    #if (( user <=> params[:session][:email].downcase ) && ( pass <=>  params[:session][:password] ))


    #if user && user.authenticate(params[:session][:password]))



     # session[:user_id]  =user
      #log_in user
      #redirect_to user
    #else
     # flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    #end
  end

  def destroy
    render 'logout'
  end

end




class UsersController < ApplicationController
  
  def show
     @user = User.find(params[:id])
     @title = @user.name + "<script>"
   end
  
  def new
    @user = User.new
    @title = "Sign up"
  end
  
  def create
   @user = User.new(params[:user])
   if @user.save
     flash[:success] = "See, it works!"
     redirect_to @user
   else  
     @title = "Sign up"
     render 'new'
   end
  end
 
end

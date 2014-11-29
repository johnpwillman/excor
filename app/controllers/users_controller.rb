class UsersController < ApplicationController
  def index
    if user_signed_in?
      @poem = Poem.new
    end
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
    @poems = @user.poems
  end
end

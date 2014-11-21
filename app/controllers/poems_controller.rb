class PoemsController < ApplicationController
  def new
    @poem = Poem.new
  end
  
  def create
    @user = current_user
  end
  
  def index
    @user = User.find(params[:user_id])
    @poem = @user.poems.all
  end
  
  def show
    @poem = Poem.find(params[:id])
  end
  
  def update
  end

  def destroy
  end
end

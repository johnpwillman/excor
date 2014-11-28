class PoemsController < ApplicationController
  def new
    @poem = Poem.new
  end
  
  def create
    @poem = current_user.poems.build(poem_params)
    if @poem.save
      flash[:success] = "Poem created!"
      
      if current_user.poems.empty?
        redirect_to new_user_poem
      else
        redirect_to user_poems_path
      end
    end
  end
  
  def index
    @user = User.find(params[:user_id])
    @poems = @user.poems.all
  end
  
  def show
    @poem = Poem.find(params[:id])
    @poemlines = Poemline.where("poem_id = ?", params[:id]).order(:created_at).includes(:user)
    if user_signed_in?
      @poemline = Poemline.new
    end
  end
  
  def update
  end

  def destroy
  end
    
  private
    
    def poem_params
      params.require(:poem).permit(:title, :firstline)
    end
  
end

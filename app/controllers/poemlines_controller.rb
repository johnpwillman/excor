class PoemlinesController < ApplicationController
  def create
    #@poemline = current_user.poemlines.build(poemline_params)
    @poemline = current_user.poemlines.build(poem_id: params[:poem_id], line: params[:poemline][:line])
    if @poemline.save
      flash[:success] = "Poemline created!"
      
      if current_user.poemlines.empty?
        redirect_to new_user_poem
      else
        redirect_to root_path
      end
    end
  end
  
  def index
  end
    
  private
    
    def poemline_params
      params.require(:poemline).permit(:poem_id, :line)
    end
end

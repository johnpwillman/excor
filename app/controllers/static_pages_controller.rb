class StaticPagesController < ApplicationController
  def home
    if user_signed_in?
      @poem = Poem.new
    end
    @poems = Poem.includes(:user)
  end

  def about
  end
end

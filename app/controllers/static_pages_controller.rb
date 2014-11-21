class StaticPagesController < ApplicationController
  def home
    if user_signed_in?
      @poem = Poem.new
      @poems = Poem.all
    end
  end

  def about
  end
end

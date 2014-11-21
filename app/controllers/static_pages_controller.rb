class StaticPagesController < ApplicationController
  def home
    if user_signed_in?
      @poem = Poem.new
    end
  end

  def about
  end
end

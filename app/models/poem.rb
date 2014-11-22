class Poem < ActiveRecord::Base
  belongs_to :user
  has_many :poemlines
end

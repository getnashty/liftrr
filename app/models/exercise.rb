class Exercise < ActiveRecord::Base
  
  has_many :muscles
  belongs_to :lifts
  
end

class Reshipe < ApplicationRecord
  
  has_many :favorites
  
  belongs_to :user
  belongs_to :item
  
end

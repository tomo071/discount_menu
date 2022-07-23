class Reshipe < ApplicationRecord
  has_one_attached :image
  has_many :favorites
  
  belongs_to :user
  belongs_to :item
  
end

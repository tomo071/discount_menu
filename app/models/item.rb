class Item < ApplicationRecord
  
  belongs_to :material
  belongs_to :genre
end

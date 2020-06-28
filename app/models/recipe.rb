class Recipe < ApplicationRecord
  validates :name, :type, :yield, :ingredients, :equipment, :instructions, presence: true
end

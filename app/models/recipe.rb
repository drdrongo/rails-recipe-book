class Recipe < ApplicationRecord
  validates :name, :cuisine, :yield, :ingredients, :equipment, :instructions, presence: true
end

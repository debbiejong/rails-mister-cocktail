class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates_uniqueness_of :cocktail_id, :scope => [:ingredient_id]
  Ingredients = Ingredient.all
  Ingredient_array = Ingredients.select do |ingredient|
    ingredient.name
  end
end

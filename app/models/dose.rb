class Dose < ApplicationRecord
  validates :description, presence: true
  belongs_to :cocktail
  belongs_to :ingredient
  validates :ingredient_id, uniqueness: {scope: :cocktail_id}
  # validates :cocktail_id, uniqueness: true
end

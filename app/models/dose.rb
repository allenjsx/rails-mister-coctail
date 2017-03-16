class Dose < ApplicationRecord
  validates :description, presence: true
  validates :cocktail_id, uniqueness: {scope: :ingredient_id}
  belongs_to :cocktail
  belongs_to :ingredient
end

# validates :model_name, uniqueness: { scope: [:brand_id, :fuel_type_id] }

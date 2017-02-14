class Part < ApplicationRecord
  belongs_to :category
  has_many :part_vehicles
  has_many :vehicles, through: :part_vehicles
  belongs_to :product

  delegate :id, to: :category, prefix: true, allow_nil: true
end

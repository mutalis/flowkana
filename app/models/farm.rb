# Farm Model
class Farm < ApplicationRecord
  has_many :strains

  validates :name, presence: true, uniqueness: true
  validates :county, presence: true, uniqueness: true,
            inclusion: { in: %w(Mendocino Humboldt Trinity),
                         message: '%{value} is not a valid county. Must be Mendocino, Humboldt or Trinity' }
end

class Farm < ApplicationRecord
  has_many :strains

  validates :name, presence: true, uniqueness: true
  validates :county, presence: true, uniqueness: true  
end

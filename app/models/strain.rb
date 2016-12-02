class Strain < ApplicationRecord
  belongs_to :farm

  delegate :name, :county, to: :farm, prefix: true

  validates :name, presence: true
  validates :family, presence: true
  validates :farm, presence: true
  validates :thc, presence: true, numericality: true
  validates :cbd, presence: true, numericality: true
  validates :purchase_price_per_gram, presence: true, numericality: true
  validates :weight, presence: true, numericality: true

  def inventory_value
    weight * purchase_price_per_gram
  end
end

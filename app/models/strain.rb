# Strain model
class Strain < ApplicationRecord
  after_find do |strain|
    create_weight_record if strain.wads.empty?
  end
  around_update :log_weight
  after_create :create_weight_record

  belongs_to :farm
  has_many :wads

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

  private

  def create_weight_record
    wads << Wad.create(weight: weight)
  end

  def log_weight
    old_weight = wads.first.weight
    yield
    if old_weight != weight
      wads << Wad.create(weight: weight, diference: weight - old_weight)
    end
  end
end

require 'rails_helper'

describe Strain do
  context 'associations' do
    it { is_expected.to belong_to(:farm) }
    it { is_expected.to have_many(:wads) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :farm }
    it { is_expected.to validate_presence_of :thc }
    it { is_expected.to validate_presence_of :cbd }
    it { is_expected.to validate_presence_of :purchase_price_per_gram }
    it { is_expected.to validate_presence_of :weight }
    it { is_expected.to validate_numericality_of :cbd }
    it { is_expected.to validate_numericality_of :purchase_price_per_gram }
    it { is_expected.to validate_numericality_of :weight }
  end

  describe 'Inventory value' do
    it 'equals the weight times the purchase price' do
      strain = Strain.new(weight: 300.0, purchase_price_per_gram: 5)

      expect(strain.inventory_value).to eq(1500.0)
    end
  end

  describe 'Weight adjustments' do
    it 'logs a weight change' do
      alpine_glow_farm = Farm.create!(
        name: 'Alpine Glow',
        county: 'Trinity'
      )
      weight = 1200
      strain = Strain.create!(name: 'Royal Ogre',
                              farm: alpine_glow_farm,
                              family: 'Indica Dominant',
                              thc: 23.10,
                              cbd: 0.10,
                              purchase_price_per_gram: 3.75,
                              weight: weight)
      new_weight = 2000
      strain.update!(weight: new_weight)
      expect(strain.wads.first.weight).to eq(new_weight)
      expect(weight + strain.wads.first.diference).to eq(new_weight)
    end
  end
end

require 'rails_helper'

describe Strain do
  context 'associations' do
    it { is_expected.to belong_to(:farm) }
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

  describe '.inventory_value' do
    it 'equals the weight times the purchase price' do
      strain = Strain.new(weight: 300.0, purchase_price_per_gram:5 )

      expect(strain.inventory_value).to eq(1500.0)
    end
  end
end

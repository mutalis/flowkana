require 'rails_helper'
require 'securerandom'

describe Farm do
  context 'associations' do
    it { is_expected.to have_many(:strains) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_uniqueness_of :name }
    it { is_expected.to validate_presence_of :county }
    it { is_expected.to validate_uniqueness_of :county }
  end

  describe 'Farm county values' do
    it 'is valid with Mendocino, Humboldt, Trinity county' do
      farm = Farm.new(name: 'any', county: 'Mendocino')
      expect(farm).to be_valid
      farm.county = 'Humboldt'
      expect(farm).to be_valid
      farm.county = 'Trinity'
      expect(farm).to be_valid
    end

    it 'is invalid with any other county' do
      farm = Farm.new(name: 'any', county: SecureRandom.base64)
      expect(farm).to_not be_valid
    end
  end
end

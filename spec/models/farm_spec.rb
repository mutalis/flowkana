require 'rails_helper'

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
end

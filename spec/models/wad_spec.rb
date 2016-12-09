require 'rails_helper'

RSpec.describe Wad, type: :model do
  context 'associations' do
    it { is_expected.to belong_to(:strain) }
  end
end

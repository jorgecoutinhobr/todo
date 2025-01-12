require 'rails_helper'

RSpec.describe List, type: :model do
  context 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:items).dependent(:destroy) }
  end

  context 'validations' do
    it { should validate_presence_of(:title) }
  end
end

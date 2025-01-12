require 'rails_helper'

RSpec.describe User, type: :model do
  context 'associations' do
    it { should have_many(:lists).dependent(:destroy) }
  end

  context 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
    it { should validate_confirmation_of(:password) }
  end
end

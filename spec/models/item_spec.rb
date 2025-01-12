require 'rails_helper'

RSpec.describe Item, type: :model do
  context 'associations' do
    it { should belong_to(:list) }
    it { should belong_to(:user) }
  end

  context 'validations' do
    it { should validate_presence_of(:title) }
  end

  context 'enums' do
    it 'defines enum for priority' do
      should define_enum_for(:priority).
        with_values([ :minimal, :normal, :critical ])
    end
  end

  context 'scopes' do
    it 'orders by completed asc and priority desc' do
      item1 = create(:item, completed: false, priority: :minimal)
      item2 = create(:item, completed: true, priority: :critical)
      item3 = create(:item, completed: false, priority: :critical)

      expect(Item.all).to eq [ item3, item1, item2 ]
    end
  end
end

require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create :user }

  describe 'relations' do
    context 'to creations' do
      it 'has_many creations' do
        creation_1 = create :creation, creator: user
        creation_2 = create :creation, creator: user

        expect(user.creations).to include creation_1
        expect(user.creations).to include creation_2
      end
    end
  end
end

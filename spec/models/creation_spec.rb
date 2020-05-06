require 'rails_helper'

RSpec.describe Creation, type: :model do
  let(:creation) { create :creation }

  describe 'relations' do
    context 'to user' do
      it 'belongs to user as creator' do
        expect(creation.creator).to be_a User
        expect(creation.creator.creations).to include creation
      end
    end

    context 'to photos' do
      it 'has many photos' do
        photo_1 = create :photo, holder: creation
        photo_2 = create :photo, holder: creation
        expect(creation.photos).to include photo_1
        expect(creation.photos).to include photo_2
      end
    end
  end
end

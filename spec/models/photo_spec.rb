require 'rails_helper'

RSpec.describe Photo, type: :model do
  let(:photo) { create :photo }

  describe 'relations' do
    context 'to creation' do
      it 'belongs to creation as holder' do
        expect(photo.holder).to be_a Creation
        expect(photo.holder.photos).to include photo
      end
    end
  end
end

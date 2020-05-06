class Creation < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: :creator_id
  has_many :photos, as: :holder
  accepts_nested_attributes_for :photos

  def attributes
    # include related photos when serializing model
    super.merge({
      'photos': photos
    })
  end
end

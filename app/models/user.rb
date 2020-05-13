class User < ApplicationRecord
  has_many :creations, foreign_key: 'creator_id'
end

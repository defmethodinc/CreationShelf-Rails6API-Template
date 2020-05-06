class Photo < ApplicationRecord
  belongs_to :holder, polymorphic: true
end

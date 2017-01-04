class Medium < ApplicationRecord
  has_many :media
  has_many :displays
  has_many :artists, through: :displays
end

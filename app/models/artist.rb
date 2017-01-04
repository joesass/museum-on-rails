class Artist < ApplicationRecord
  has_many :displays
  has_many :media, through: :displays
end

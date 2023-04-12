class Vehicle < ApplicationRecord
  has_many :themes
  has_many :users, through: :themes
  has_one_attached :image
end

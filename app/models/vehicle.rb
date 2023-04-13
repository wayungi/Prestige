class Vehicle < ApplicationRecord
  has_many :themes
  has_many :users, through: :themes
  # ! this will need to be changed when  the images are comming from the db
  # has_one_attached :image
end

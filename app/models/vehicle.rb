class Vehicle < ApplicationRecord
    has_many :themes
    has_many :users, through: :themes
end

class Theme < ApplicationRecord
  belongs_to :user
  belongs_to :vehicle
  validates :user, :vehicle, :name, :book_date, presence: true 
  validates :user, uniqueness: {scope: :vehicle}
end

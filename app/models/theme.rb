class Theme < ApplicationRecord
  belongs_to :user
  belongs_to :vehicle

  validates :user, presence: true 
  validates :vehicle, presence: true
  validates :name, presence: true
  validates :book_date, presence: true
end

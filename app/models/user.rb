class User < ApplicationRecord
    has_many :themes
    has_many :vehicles, through: :themes
end

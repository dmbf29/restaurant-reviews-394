class Restaurant < ApplicationRecord
  # associations
  # creates the .reviews method
  has_many :reviews, dependent: :destroy
  # this will delete all of its reviews
  # validations
  validates :name, presence: true
end

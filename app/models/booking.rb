class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :piece

  validates :start_on, :end_on, :user, :piece, presence: true
  validates :end_on, presence: true
end

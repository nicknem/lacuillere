class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: [1,2,3,4,5], allow_nil: false }
  validates :restaurant, presence: true, uniqueness: true
end

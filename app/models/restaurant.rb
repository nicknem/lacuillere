class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy # if you destroy a Restaurant it deletes the Review
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false}



end


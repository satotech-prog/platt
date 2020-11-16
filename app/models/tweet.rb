class Tweet < ApplicationRecord
  has_many :comments
  belongs_to :user, optional: true
  has_one_attached :image

  with_options presence: true do
  validates :title
  validates :exposition
  validates :image
  end
end




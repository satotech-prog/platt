class Tweet < ApplicationRecord
  with_options presence: true do
    validates :exposition
  end

  def self.search(search)
    if search != ''
      Tweet.where('exposition LIKE(?)', "%#{search}%")
    else
      Tweet.all
    end
  end

  has_many :comments
  belongs_to :user
  has_one_attached :image
end

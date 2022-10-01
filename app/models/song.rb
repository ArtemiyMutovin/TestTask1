class Song < ApplicationRecord
  belongs_to :artist
  has_many :downloads, dependent: :destroy

  validates :title, presence: true
  validates :length, presence: true
  validates :filesize, presence: true

  scope :top, lambda { |days, count|
    where('downloads_count is not null and created_at >= :date', date: days.to_i.days.ago)
      .order(downloads_count: :desc)
      .limit(count)
  }
end

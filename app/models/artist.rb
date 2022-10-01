class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  validates :name, presence: true

  scope :top, lambda { |letter, count|
    select('artists.*,MAX(songs.downloads_count) as most_popular')
      .joins(:songs)
      .where('name ~ :name', name: "^(#{letter.camelcase}|#{letter.downcase})")
      .order('most_popular desc')
      .group('artists.id')
      .limit(count)
  }

  def ordered_songs_by_title
    songs.order(title: :asc)
  end

  def songs_top
    songs.order(downloads_count: :desc)
  end
end


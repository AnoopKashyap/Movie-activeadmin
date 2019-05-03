# == Schema Information
#
# Table name: movies
#
#  id                     :integer          not null, primary key
#  name                   :string
#  release_date           :date
#  short_description      :text
#  description            :text
#  genre                  :string
#  recommended            :boolean
#  age_bar                :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  wallpaper_file_name    :string
#  wallpaper_content_type :string
#  wallpaper_file_size    :integer
#  wallpaper_updated_at   :datetime
#

# Model for the movie
class Movie < ApplicationRecord
  has_many :movie_stars
  has_many :stars, through: :movie_stars
  has_many :user_comments

  has_attached_file :wallpaper, styles: { medium: '200x200', thumb: '100x100>' }

  validates_attachment_content_type :wallpaper,
    presence: true,
    content_type: %w(image/jpg image/jpeg image/png image/gif)

  validates :name, length: { minimum: 3, maximum: 25 },
    presence: true

  validates :release_date, :short_description, :genre,
    presence: true

  validates :age_bar, numericality: { less_than_or_equal_to: 99 },
    presence: true
end

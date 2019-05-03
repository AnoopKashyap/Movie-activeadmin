# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  movie_id   :integer
#  review     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# Model for Comment which belongs to the user and movie
class UserComment < ApplicationRecord
  belongs_to :user
  belongs_to :movie
end

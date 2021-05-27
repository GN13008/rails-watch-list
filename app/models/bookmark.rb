class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  # comment cannot be shorter than 6 characters 
  validates :comment, format: { with: /.{6,}/,
  message: "6 characters at least" }

  # is unique for a given movie/list couple
  validates :movie_id, uniqueness: { scope: :list_id }

end

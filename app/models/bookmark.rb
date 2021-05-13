class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :list, uniqueness: { scope: :movie, message: 'list can only have movie assigned once' }
  validates :comment, length: { minimum: 6 }
end

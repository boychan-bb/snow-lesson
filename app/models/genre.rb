class Genre < ApplicationRecord
  belongs_to :instructor
  #validates :genre, presence: true
end

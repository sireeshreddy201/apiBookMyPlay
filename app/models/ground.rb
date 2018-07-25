class Ground < ApplicationRecord
  belongs_to :user
  belongs_to :manager
  serialize :amenities, Array
end

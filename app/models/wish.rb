class Wish < ApplicationRecord
  serialize :tags, Array

  belongs_to :user
  has_one :contact_info
end

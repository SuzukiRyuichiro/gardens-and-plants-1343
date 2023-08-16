class Plant < ApplicationRecord
  belongs_to :garden

  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings
end

class Tagging < ApplicationRecord
  belongs_to :plant
  belongs_to :tag
end

class Comment < ApplicationRecord
  belongs_to :plat

  validates :avis, presence: true
end
